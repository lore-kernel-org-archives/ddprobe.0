Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4728120C492
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744781994; cv=none; b=sHrisCoDZlLIe9xbf6knKT+7btP/Af4DbzQOMTyrL7pxcEpqnLacFnntwXN3qzkxQ22S0/yLvT43jpKHCN+01iHIJ1gO/EZhXp9fzfNWF2UbVGLNS73fAZ/vOuptk7BPxGp6qAiMe4xHG9JLr/+jmjSto+outQRd+OobG9Lq0dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744781994; c=relaxed/simple;
	bh=qVC+B5F0V8qLGy5LMPPR1KrmkTrPQ1lNBmprTWAuYWE=;
	h=To:Subject:From:Message-Id:Date; b=pB7rl0Zd3CQU3WRcCMFyCSadKpVWPfperQDB5d7DP2LeM5oktBq7gS+ZMlSD/hdu2vO2IFuZDyD7PiJOIIhNdUwAr4dTCc3byaO0rqV2KNSrJ5f+gCxw9aAEnaPfB4WDC7yFEew9yUxDXDrIn+bE6YRgqLrHlghIM9wgEbVxh9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPDv+n3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPDv+n3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FCDC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744781993;
	bh=qVC+B5F0V8qLGy5LMPPR1KrmkTrPQ1lNBmprTWAuYWE=;
	h=To:Subject:From:Date:From;
	b=HPDv+n3LX5j6Rd3JxU9yuGYA5E6TdGvNrWGsLQsd1PaG2mhmgBoKvIg5fGAY/o718
	 Qj2CZaPKsF7VMvLiDuCUaIMbWht4M8v6eUydjcQzQGy3YDHDEtvAT7l2WRo9XgN8I5
	 OG8IaK0lRRcmEySPfcXg17QZQr9u6zjMWZvOy9VDEWb5QaZxdJMDohrJvNzt9zsR61
	 /04ormhLiPo7xo0GrrSFUwsjCewBjiHXMlZ8Mrn7bzFlN/w1zpcGHeRBFwil+KYkVJ
	 CFgRu1cxFunYMBbMSXsGkX9rodB1DIEZJ1dx4N09feoWGD1L3eEpIB5uoXMK/W2Njd
	 gN55oCphLtZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DDAC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478199359.19210.16523670641705594244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce01c0a8d2c2ec36be1e1a3c42cbe36c32822bb8a22f619f9f8b775c295159d6
Date: Wed, 16 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744781993
