Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE1E12B94
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773765893; cv=none; b=qq9cG0vwz4g3GDsHFjR9uMHnA4CfZyEtrN2qzUOZ+CD/8y3V3GJfEJ/tSt9V9qUgOJJSBz+Hx3xd9Jc7I2ADbwnc/rAwwvEbtjSI0LQo3s1ZLb+edwdBlwRasnhLweECjMlJd/ZqAjoktpINhzwde4dch7MIgoBec7asyuaE8v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773765893; c=relaxed/simple;
	bh=QW3roDDSdF77Se2gZY6F5HY/uw8br1Zz4txHj9HXUfg=;
	h=To:Subject:From:Message-Id:Date; b=m7nuuuxomb4uoowXz7myO/nj9BDfMUQOnnKJLYREaJJ27gDTOo1IUW0EBirQl2LkEdz5B57CXMHjCYs/Amvd2JiSCngs2+3szkqEFdVjXNA5bW2Ey2Rxz+wZEroHKkYtIsfQvnaDCX0NHLgT/eQgWZJCzVqh5NG4bYeK9PfYs04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPYkPcJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPYkPcJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF963C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773765893;
	bh=QW3roDDSdF77Se2gZY6F5HY/uw8br1Zz4txHj9HXUfg=;
	h=To:Subject:From:Date:From;
	b=CPYkPcJrKJm21sO/FITrU6kHRRFmli7u9piQcFymEXRM/5/6rPgft/YKlRwdp9WEV
	 iLRE1WRdg8NPL9cfx2w3H+xbLmnA30UP7ATm2ThHFVHOsfO/QCM13pZsQhlEjsFI8a
	 hE+G7Kjh38Jyz7Ql2etpvY6bmA7waagr8hYQYlcdF5QudHiKKuw1K76xnoZhewmEb4
	 PBUi6/ffD2p1z5EZaXL4y28toSvbYp6pi1PLOB+7wYgcd1WoFY81VZXdVw8iv7tdHZ
	 SbHyL5TD84OAVUyoePuoNLm5RUPkYCdH5fFLO5Kx9a/uqWzp+axaiq+lJAjcktdg2n
	 TRIYwlv958pcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A69FED9EB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376589363.8665.7445786866491710644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7868818d96a8a357b2201e2d42eead888c6979a1f2205c646275855c1d1e1e3
Date: Tue, 17 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773765893
