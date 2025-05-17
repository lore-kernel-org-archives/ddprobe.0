Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E1810E0
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747441795; cv=none; b=sNYM2W4WoPCLqEREVG0M7dmX/VRp3ZxQ+wXDQghafaOg4dRpQaySGdwsd2oXWw8VDCcJSwkx8DxoiVBz/r25wJYoxjHVE/FOmBKexpitgHz7Y4mppK7sZlUKg0fSTvYOUY87rVc7aJR2TI7G0X5LbWq8mjU1VaUjvNdJ6g788qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747441795; c=relaxed/simple;
	bh=gGEWK8D8kkFwqJiUYpAG9Rp+detREcznmLkO4sdmL14=;
	h=To:Subject:From:Message-Id:Date; b=EwWM1UWMaxg/WQJCeAKE8dG7bm+3VBbi8MSm3D1sMYq9DU8pvqhb8R65+H7klMPwQbIXvH9Eln8jdcN99JRkO/4USXkTEOtXqbDoxcZgRsLsqIrBXD7btn+O8anrKq4a3hNQgqZ+h4mfbsZ6pdilOA7m3XwSRMuEh2854/z0+T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DThKfLyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DThKfLyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747441793;
	bh=gGEWK8D8kkFwqJiUYpAG9Rp+detREcznmLkO4sdmL14=;
	h=To:Subject:From:Date:From;
	b=DThKfLyosF9/pk/RsDIxqNd6p+G1gkPfHufW9aWmKNDJxgR8Cym7vOt5PbYbM4GAk
	 dUzhL07I27lWxYSMVapilUwuhwV0mH3YgQ09jf9rYizAVPiXcUa3ljA0dein5k432A
	 tAYOgVaFxq1n6pojIVBHn2l0q+W1qTGfFzZEMoM9ma1zZTZXDA/K72f/+J1bJraOFP
	 43K47wk+DbKe3pERRnOSA2214rMkJ8Og4BfkaGhuEFDWPTgXlCBo+7JypDJCt0wKG+
	 MXty4Vq8tXY+hVD7+OxLZFVjDbt0i3VppNuwjy+RYI+mejKcdnGVHqCBU4dq9Vb1mM
	 wk26UHSqIwULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A9C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744179358.32589.594255592290843559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b16c8b5c301231acc1a19d77b0171cac53d60ebca2b5f137d428bc8402cbf21
Date: Sat, 17 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747441793
