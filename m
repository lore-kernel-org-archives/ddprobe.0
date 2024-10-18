Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1842B200C87
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729270554; cv=none; b=uy+dQvS2iHOq45NZg2CtwMGFdavg3E1CFNWhberc/sPP6N3US/K+Fc3XXZhnMrfoQj4aG7Z6mBsDH9lu/eJHTkgTfH8N08i8ksvlMR7ByjHMe9T/q+NkI8YKK8JTnjr3YGhv8IXkn3uVi9w/ocJIEM2Eq1jmVC1cf6ftw9VK71w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729270554; c=relaxed/simple;
	bh=f1h1TCLlUikRqubnoUOv3Gmd2xnlF1qjSDbWyndhCU8=;
	h=To:Subject:From:Message-Id:Date; b=r2dP7bfAOC41eoTUnMwWXkSChpl6DzF+V2/4kZeTl/HiXlU/e0fioI8A7/vq2qNmMLwjOp1kqMRgz/Jq1xsTpCHhWza2aNiQdlU/w6Cl4D+3aHaqX3XRB+OQ5YwqEIVWn+1YQXkbVKflXeOgWpaFFfm8q3JEI5OyVpvgBWGA8hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLz02L+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLz02L+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FF0C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729270553;
	bh=f1h1TCLlUikRqubnoUOv3Gmd2xnlF1qjSDbWyndhCU8=;
	h=To:Subject:From:Date:From;
	b=eLz02L+16AaNdLx3otpWj5IjDvudsdCcJcR3/LyUgO9K3Kk2p/G6MDYT4NB+W3UDN
	 +2gGyVuCBqzbaiHGxcqRjzewR9IMvC9auEJIvTxi8h/YA/vS0k2vli5+C9R3p92jUF
	 pOnODxEXZUr5yvdtiMb60O1m5xxldpaINb0zXaHV66PYlEq6xuf3LtaopylNcem/3I
	 uOEHTRZTpioJIyvXztYyb5Pj1ZuekLL9yBa2fomwHOj60hVfd2NZzp2JdewH5u12k0
	 /D6jyLbPNi1Pc/+coXJMzX/RNoKjcbtxlkG24NQtfqprL9RqJcsSUTcM69rQHbTABH
	 D3UVSId43JLEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4E3D374BF
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927055361.10184.1591790781561901357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f538c01fad764e1b74fa46d875064c7bee03bc930af2758902b1daa2c91625
Date: Fri, 18 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729270553
