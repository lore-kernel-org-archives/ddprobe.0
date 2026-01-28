Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C322DEA6B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769625834; cv=none; b=IDNOdatohNosn0L9kJNZuQkx/XjpG8VQBaxEtGWDVVhPd3lhR0xzjQQEdF9TMEFmPMjO/7e0DODWByIUJkUQKjcgDSvaNEAxJvJ5j5t0QP/GtnFGqLp/9tsf4wLy10u41bzQrOBhXWN1pcZeZOisxOVHnSFzBijTyMQ+VM0QIcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769625834; c=relaxed/simple;
	bh=dnDXsM59WwfGYQlD58HuN9ysWH/d1LsucyonUJ/aMfE=;
	h=To:Subject:From:Message-Id:Date; b=EsJ7wuHLziz/ONf1jeeGIOttNH7GJIFm8j6gFPFsSd8Zy9OXkNK8SK+mOEu/izuI5EYxkiR3S3XdSHfZbz6Ip3afRqUVEVdnNpRRJ5adv87C8kcc74OAYrA5jEV0xiKFjO0B5VpyAuIGVyda7DI+t0usStsArwuK/FJQCJy+Atw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSCF4X35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSCF4X35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769625833;
	bh=dnDXsM59WwfGYQlD58HuN9ysWH/d1LsucyonUJ/aMfE=;
	h=To:Subject:From:Date:From;
	b=jSCF4X35oLUP+WVBOcpcsFXsqW5we7Hx/xgLph407Xb78z3fyy1N3VXlr/xX2nT3j
	 mkKuECgGPqugleOCOqoE40pclyC2yxngpJvvR6FM1tMfdT68S208Zg3tYwo2kVFxCU
	 XBEo59yqbHL71Ki1fGOhLmyLKe8qeouGidtzYOGY6FHOQNSPfm8Md8lD6ZXqreWZwA
	 lDsH9Ii/yfd2pZhNwMIZYEsot2V589Dw5MsfBQtfOUyyCCkq8U+GQd3fi0kmkV6pjz
	 wvl8eK65x4B2S5Sb1oTmQ1jzGUAciPGejG0R6ez3zieGgsmwcnPnJVpmUrYmqQmL8S
	 6KNAV/4b/tDoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E50D46BEF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962583358.16495.12943859774798447715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9022c9360aee4bf8067740201df5a215bdf2a24f910bb450229aad7b39e888
Date: Wed, 28 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769625833
