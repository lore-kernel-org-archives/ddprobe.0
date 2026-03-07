Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE7C2472AE
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772861694; cv=none; b=bnxAFCsjn1qWSLuzRkyn5ZFFHoto5cgX5FxV/HXhvAId/k4sxtmC/8C9rGFO7wq5yXcvHc0QLBAmA8QC0SPspn3ri7p5VdrhYScbAHaFaX0ae0hxVytYc4BYRNtu+WIZjxlmPy8nV9qL1naZETZBESMecwvXq2I2wDVxSqCZJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772861694; c=relaxed/simple;
	bh=2XLaiiG9A/7bfadDMoT+CbzSOWX6cWt2E8sRVzuoiRY=;
	h=To:Subject:From:Message-Id:Date; b=i4Ue8xiOSJoxUl8mlwezGZO7vk8AFHcvxaYO+VY+V2O1sX8WRAQovjtj5asj1A7+zxMPmDw4/LL037UM2zyXRu6QOXV+N8+9LTZte5+XZ9LTJAq9JSZoVuWf9IRDFM1i/shN2fVSBGOyPrlTxtaxbRdtp8BCEuH2ddha8o/NgLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ezo/PIYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ezo/PIYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFCDC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772861693;
	bh=2XLaiiG9A/7bfadDMoT+CbzSOWX6cWt2E8sRVzuoiRY=;
	h=To:Subject:From:Date:From;
	b=Ezo/PIYkSwWlfw8RqX5jl06Jjvx+2khipMsAyRg0zHAOMc29mBlciCxRia5930res
	 n5zVY2EiBkzF5tIMRT43YC9gyXjghxbsGQ7iopwIfm3uCFUsFLZYa5AmbWYBTuw9KC
	 ci1qVW1HUOM/OcfDpNMmZRb9J98mAMb4Lxjm45ktZJb/qrYmAmxg5504Ora5wfQpNV
	 Yd7rNbXKN3KWMuE/Brkx/SUP6iE+iDNVbPQRR/6PwoRk8Jn/QjqpW1eOYYzknBpPWU
	 mxCIXYoegiT2sQ6u5KSNvmK/cpEWFpOepUdoezweGyNLY/7/m8VArdTKR3yStqPDpQ
	 uLluzppcS5ykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DCFC9ECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286169359.20394.6054049967198019399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408b8b727663e38d4ffc557cd7996099e4a4f95f08dd79bac7b7a68e7f843b51
Date: Sat, 07 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772861693
