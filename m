Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7712417D3
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 23:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738885555; cv=none; b=eiJt9weNmq0ypCycNoOqt/k0azmwtGJIVnFUiYEckq+qd7T0MJE+7apU8ag39m3Zp0LP3M9zxgpoYUmv5HsgHOiayB4QEtPh0/Po7t6cDE+d98S2VchlUIBtwZqCSbdDUK9fou6UaROQf4xkBCiBzVBnEnWT6XBZYMjPKrLl9ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738885555; c=relaxed/simple;
	bh=VZTrBi/y7lcZsqwbQxXQ+fjiA46ehx5kC/hskKnXT3k=;
	h=To:Subject:From:Message-Id:Date; b=HYJ9aVDwV9VXWPLtEkHNCx716U8V2RTdZf2oV2KeKHQBbYlD0GKr3KJVCyyPx8dN8e78ju3SLkdDsJ5e/Qd3Smev66Gzge3AN2bnFDIhsnEqZadF7D+WotIHO1kGCO0oJKWl7011hib1/ZgeMUmzej7UWyXPjC8MfIwcqbHxNy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auxaRZ8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auxaRZ8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF989C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738885553;
	bh=VZTrBi/y7lcZsqwbQxXQ+fjiA46ehx5kC/hskKnXT3k=;
	h=To:Subject:From:Date:From;
	b=auxaRZ8M98h4qbTZgeQYMeCA20h+KRLsJ5C0KoMaZHzYWnc8cL5hsev6Hy3Pmz7ax
	 iHtiDQWOVaV8mQLwNqg1GxHcdq1lJCbKOBm7hDB9v1kzasFO72UhMnIn8SkCOGCgQ3
	 090DpkDpHccNOv2eAQYEP+T9QqP+8tv/NA0p2EsiX2aiXH5Po4UzaxRkoOJciNVyAA
	 WBizNhVrbOT3KDqm+mvvt67Kc3io8GdCDg0F/v9DZ90v/cP6+QrkWWIjB5jxg0Nj0x
	 WD1l5MBXAJCUu6jl+J9JKWwdCyehd09LjR/bOnHlkjBC/xeZZmrLVV+zZrbf9NthdE
	 XpPRj50TXIsSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CE0C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888555372.8255.7551061827975942137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115c4459fc428f30fc69851895ac6f8507831b5cb47ea8f6daf07bd4cf50637d
Date: Thu, 06 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738885553
