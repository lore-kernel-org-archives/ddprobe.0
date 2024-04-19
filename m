Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6ED168C4
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713561623; cv=none; b=UCbCygkGNrCSKIwkLEE3kz7iw5dHQVdqq0vwmIJlGh9slLHcuxPxf2ya8dfRJrGMazz1zy/vZpvgysqZNPO601QfF98b8mExhMOHqmPGl1myk6mhpRZJyhsN7QBAH1O01bQREXNTfj0Zqh5uHaDtOCP+2KDZL08ca8iGPisU+Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713561623; c=relaxed/simple;
	bh=vRpQtdIqUjhRuuv4oYSoCiPvCsi82dyQzu3RTKmCifw=;
	h=To:Subject:From:Message-Id:Date; b=H5wJ7uiiamDCO/kS6Xg47IjaSrvmMWUuy97mfXvq2GTegHK9GGfhx9nqpkds/8CvJJzlMGuRnr56lK1ZYrwbYoiNnqgnlvPXW1+1cMIGPStfC2O5Zwm1UJ0IMpSvpJdFPB7q5fCVmpzV1Uy3FLnlXelTM60VB/OE3hSDEVIUk5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYxwlzjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYxwlzjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7619C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713561622;
	bh=vRpQtdIqUjhRuuv4oYSoCiPvCsi82dyQzu3RTKmCifw=;
	h=To:Subject:From:Date:From;
	b=MYxwlzjdyI7XB75UrOD/Hsg+uPet0EIfdFsiPPo9+J0oYoRSMghrIj7BnwVhgrvmb
	 p5Ed4HPQQf0RQDmOCU9ck8yh5ff6MmEvRUtXeaENhxAQtRFMhlx71yFzTYrxWfJcwv
	 MBgt8SSCsireIymAAEfZDe1CObJbEM8JcDpFgsLPYIcJlGQD2J3O5VTqJlMr4e3gU6
	 1V7j+iswjo5pi1FVMaPoH3d8BfD57blMTIOor8UuKUIdeA7xMWu4vdcoXSl48LyFQx
	 1RACWCe/XBzRnIv7uQPTK3oq+lTW0TjxSVguDt2cPAqk5c4e5G6CL4cuFBeY//cMa5
	 eXt//yMNu5EsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD681C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356162283.32242.17765864623975305411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d21635569b121861c1aaee9caa1eef2f2a46bb5fb3956fc30eeaa11fa997157
Date: Fri, 19 Apr 2024 21:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713561622
