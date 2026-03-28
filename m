Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00270313E36
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774696494; cv=none; b=XyGciUrz+AEJ5hRFKxUZ4rCrTzFyfsgfHRF/Bl3ohwfEiUasMs3AlNzatkAb86LGWcH8jj6zm75XPBJ3SJhy/ijxiFugM2z+gPf/2OW++45eoAnt2hl7bv+dVTRZA9sP2DtSeVehu+MkUtkAt8DZ5hhQtJE0zeXZC4kWXLCif1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774696494; c=relaxed/simple;
	bh=B9E+jpmtrqMI+Nkv/17uc1pERem6M0X4x0CE3ze/pEE=;
	h=To:Subject:From:Message-Id:Date; b=YBvW8MinQev8bV57GDo1nIcYqLOIDJhyIiJaeIs6g46cV+jPPhjcEGX+yGyKRL6iIO6z5rA/ORTM2OWLoOQqA9nm1rruPtbeFzxpg0ORmRi1+BKzIaHBKZQfPQBnGrKblDLV2/RSf/C6UFu4hpfjnNPo89kWtku8a+rTMjn+dGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUqPSndX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUqPSndX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774696493;
	bh=B9E+jpmtrqMI+Nkv/17uc1pERem6M0X4x0CE3ze/pEE=;
	h=To:Subject:From:Date:From;
	b=HUqPSndX7IVa6K2H+MCXumidxggaQ3YeQYXlqDH7if49NnLGeOfugC1nN/6V4qcZ3
	 hXH9HjJWB4LtxfMfq0ZkggUkLyfzY1PMdKOV3+/JU/VDkwFQbhnbEYcTY3kIwMUnnv
	 6Bzm2Bn+hr9LYV3LLwVjljIt6FUHz5BoFCeaYIHxUznPZzQ11u+B3zDOuR5cW82taM
	 UxWLML+Z7ltpbydWma8oN/oyS+o0Svt1nH+ZNTXSqi2squAE/Hy9bx81zzG5BCpYTA
	 UMSVvs5a3hJiCzHApjyPM36chzafSdPK3qlNc/WZcEWMr1PHlppf+pjC5i3Glrkx6l
	 GfrjOy4/5q7iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E910F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469649358.15402.7866900427929812838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5769eab3cb6f4f0b595a0c5d8587a04becf3d8a1f9eb3a6612b68293ca0d04b1
Date: Sat, 28 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774696493
