Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5C327452
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749970794; cv=none; b=RbHeD+tTBjSQyTEbED2pgg4GUqxPT8PsIFr0xkHijrUhHDY2dis5P3be3KOe9K/JUrHgJZxShmNM7GlwGsp/aKA2CSPzzWr/9gttFmG/Y/BZDU6TDDB/1ltWb8SAz5pa3Wfs7W1Wn5/5dc+lNpU6A1wvzss9Unahse0SK0KClyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749970794; c=relaxed/simple;
	bh=WOUiuCVqgo34CWe6QtWZpHVgVrXR4L4+gVLgw0M2/ZU=;
	h=To:Subject:From:Message-Id:Date; b=MNU7GZAtHXbfQ9qWutE5hkTTnlyCEm7SZIr2laxTd/IIDwpUUtPGnEGWDQ8ym4ABS6eIkrr1Fs+9rVkVIY1FSDvfkvasAS82uodEF6Y/l5pL1uFRPP0U43ZTgetlCysTEx5MQfEhK1Zp5UutgyKetBg0Hlv61+XHM7I+RUiYXWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT5A6xte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT5A6xte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5311C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749970793;
	bh=WOUiuCVqgo34CWe6QtWZpHVgVrXR4L4+gVLgw0M2/ZU=;
	h=To:Subject:From:Date:From;
	b=sT5A6xteFHQwyBVLtHzdSgiEr7l96ouX8ibpUQZy6+BWhaM6aLp4E95uYd66knx8O
	 Y+NkBifmqLkZdlnTytliRb5igoV+9HWTy3bfUvV4Qzz/y9kfz7z0o4xvJqTQBDX4q8
	 SXYHX/pQVfBLbGgVOf2r71tQnsVITST6yjdycE8ICOZKc7Ts6eoJ3Gv0E8jAX6q8oL
	 yFS5AgdVC/x3Qm74ruBmPYD3K3b0Y81mUTKwmtTaDI6+cjjKRfMfkTpeL9fT393rrJ
	 S5+ObIBC8yv1jMzpvY4gYyyCeArysRRV5WZr+1OOpgg1mg19612j/XN/YW+83naZWF
	 N8/XQFwY16IzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D681C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997079360.16987.5927375399722122973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95f000a2700d7f1f0e4120308485091b637f337b4f41a1a537e0e30b6a70977
Date: Sun, 15 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749970793
