Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E191B969
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710626897; cv=none; b=Z1p9HEVRMBrN+8BMQxOCm2oU28Tz6rdq5WB0tQC6puPJ4dXDD3Abl0GvFbmejUnICVJW14EXxz7fG880vV+l/FZbRbEAGNALhSnuyvUcBK3rb6SaY8YCx1qGivwzb7uakaUR4BllNJok2y9iBGDSVfQ1HlXGDfQKZ5Gn7AnZwJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710626897; c=relaxed/simple;
	bh=BMEp5Bi+we+X4ibbLMe9hBlFq1Zh5UblYkf5KwlHiXQ=;
	h=To:Subject:From:Message-Id:Date; b=TR9Z6KMFSnrKGkRqKVtep+tgmx7bWl6gruh2EU4EevOQmCU77S3yA24PYCezbj/ER/Xf1/xafIotiDIUTEO9k1YBGbUZf1PBaMK8sl6mD/Co1shkWGKGbEvmY3Xrl8M/XFrL2v7ei4eDnujAkRPP9r1PUGx72WYKtyYO9FKPw1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXuN5xdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXuN5xdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76259C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710626896;
	bh=BMEp5Bi+we+X4ibbLMe9hBlFq1Zh5UblYkf5KwlHiXQ=;
	h=To:Subject:From:Date:From;
	b=BXuN5xdghEQiqMBXZH2nUuK6abn/GB4Av2rKvpovAR2L4Efxur/KzWRTRIUXmgENk
	 SdCvJd7LnFi9/wGfiTjWi68CW1ji/FFVNF2WE9Wq9NuPssCzTU2Uda6sio9t5ry1m7
	 MDhXPGFdV0A8UctMbNPTbyAgGCqOyr1eQMpon8DnvrZjQyKsrBk6jrMBEkYbYGvVZS
	 896w9Ns69wmMOeGiGXCxUF854Loh2KRU34kEEgbdREy81f7OghBft2Yid1dY6E+Jrl
	 PviHXk+DQ6/6l2R1xy318DHXIDRWHG5wO6nn+Uo4rbcTXIa4JTZLVIY+WJOz5WcIzE
	 JcCxkyUeqt8pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601C6C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171062689637.6384.15856859756750992465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950fd4a2dbf8690ecfb944c5b98f5c55a76e3c22c5bac834075ffb0487818729
Date: Sat, 16 Mar 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710626896
