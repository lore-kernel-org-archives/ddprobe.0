Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32567311972
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771448094; cv=none; b=hK614lpro29LSNdQ+/IdZRTLxHnoeMksVju+eWJDnVXDThN82W/BG2wq+3CmV5wicHWFCKP3mxkY0KX/icgIR/n/IMQFViGUVyOdpxPfxPuBjJMIwAbyJt8xBRht18IqLw6va2Gn9sqimR2m6DNpJiY96K0EMlBsrDhAqVHEMxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771448094; c=relaxed/simple;
	bh=J+ZqWGmDYbmafiGXtCdE9WRs/qmQx0PG/pZ5stEUtUQ=;
	h=To:Subject:From:Message-Id:Date; b=pt4b/uIX+jqIXNrlo14cE2goh5SRa+jfjag0KnIxu0BfcKUAnVrFIQtJyTb3EX3kFyg2Ppe/tkTl0sKyBhUGFwpBZObz859tec/Hx7E7tihdx8qMXnPGj2ILgYKDPa/QMtN0GvXuSAh0Wc54L4ZWISgLlt9ZePphySkYgwryGJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0AsyACh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0AsyACh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8745C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771448093;
	bh=J+ZqWGmDYbmafiGXtCdE9WRs/qmQx0PG/pZ5stEUtUQ=;
	h=To:Subject:From:Date:From;
	b=F0AsyACh1Zo35a/gUPlz/SytW7na2v/QY2Kum3zRzx/GAHzJgal4il6+3E0vFgW6V
	 O0WZVi01IVyJi4XDO4/5nzBCTHOXAFBd1dJhDKlLvGpXNCbt5M1NTt5xY65vkMj9rO
	 RIwAmMtuEnaxfL6Uhwu/WkzUNNsTvUy0A9Qk7LZA2czpZvOeHK1geAnavyvG+O24Wd
	 BLDMaw/6QW0O0hwpZyGTAHB9t/Hb596ijMfJNEsls1e2CvztYtcuCJCnE/9s/yGaf9
	 bDhn/PiLdzF/9PkzRIpogZ/m9yOaHSEpn/qkGfEEaCXBFabU2a13/RgNkGAJcjr7u4
	 LsVYlVmw4glDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E93FE9A04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144809363.7949.1785894793301808128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06c8a7af31eda9c249a553b1ae0c4123230db11a13bb901aa02cae37e92adf3
Date: Wed, 18 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771448093
