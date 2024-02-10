Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AE320E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707528497; cv=none; b=qDURQXn0Su5Zf3A2H3ArvkhOrfGdM7eggIVWf4/G+Cn/0YAlnOkkDgdXwsbPYlNbdmRRIlV0qnnFZHXsKncIIe6klGsVeRmQwbq1UgxGtCT4OFVhoX2lJPJ2RRC4rEiKnlURUf22tCn5bV6KekvLIX7gbT53kOEPBmM27/1L+8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707528497; c=relaxed/simple;
	bh=hjlRqEkhVQW//Wk2BJnYPIhHndEspd70t75+2zlvJV8=;
	h=To:Subject:From:Message-Id:Date; b=aNjxi5PbofyVa+y61U+SB4MyYJnC7OyeV1c8Hjmwn0c3evIEIuKl3eekKGiJXvF+GXFA0A19fIN4qPeRJreAgXQqIAMuIpbVduVEAmB1A1p50QUYHN5lC/ru3mrStRwFoXm490CUNpcjb4/WDEnkAYIxuvlcAAHZP3e5nhHv8TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4gHCa9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4gHCa9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75226C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707528496;
	bh=hjlRqEkhVQW//Wk2BJnYPIhHndEspd70t75+2zlvJV8=;
	h=To:Subject:From:Date:From;
	b=f4gHCa9bXBY+0sW+XuxkENWSaM8LMEUGsZ/O+qLdk4cDMwKug1lo4itWdZ8BsVwqi
	 RvMYSNEHS1STRJdD+CEuJO2TpG1OwZRtF9AWS+GcR13mWmIHu4eeSnuFy2QW61XvLr
	 NCe6Kl+XwesKS4OotwpUEynv1YMCkkDQNCZQtVQ6nISoc4dCBkOCqrG87/OD8CeAXH
	 a4aoVyVX14ZiJ5UL92LM/vj+sNpSRqCbApdgNnB9NG4sdfXRdCTQfiV6TgDi5oy1Cd
	 KF8vvoySV1q3mv235UKE3qBSwBXhGavIAG/KZIpU3WQELk/5rfaXhpRbp8/l0hhWgZ
	 mP1vKqMocgTRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6D3C48297
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170752849636.2111.14565385493866620297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d524e3105b084fff1b973907b1352d203f02bc6227e1722c23244268241e25a9
Date: Sat, 10 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707528496
