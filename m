Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400AC23C4E9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760138994; cv=none; b=A59A67qbmvr/fWD3Rko/SJ8J+aelyDFNNNWXh473Rn3m8JcUPO0oGO1uz4tOE7ic11iG99qHmRyuGiK0DBII/UVG/vWkIqO0YNBBKyff5hBpUc0i1A681an3AovWuOVxG8vad1vYDeEAX7uWt1P3d2tc1xDVTB0J1Uysyx0qwaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760138994; c=relaxed/simple;
	bh=fRMXFY68uIrkujB7C8ZUiajNrQnXyMEUA+Spge+OuJc=;
	h=To:Subject:From:Message-Id:Date; b=Ka5rxD+z4m8zra/ai/T1H3JsvGXRb/4RPH1A8XEU4eaKsK5ru2cg6SvLW6msmBMNWr0cjrx4xu9h9PhWb7KhUvmhgdq59gkHEVMxoEDcqde51HX7jW5AlZo2fWQrakltzx5yegn1euY+rhXXehFV06tybxlkfN+0/1QiwRIHcG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvwTl5Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvwTl5Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EF9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760138993;
	bh=fRMXFY68uIrkujB7C8ZUiajNrQnXyMEUA+Spge+OuJc=;
	h=To:Subject:From:Date:From;
	b=TvwTl5XaDfVJeoRSSW/nCJHvIdiI8uGhhLB6GWSuG374GvcswX94d0huHrOZDwUOj
	 nY7UvqaKG/4wF0xvdDlsivtZk1mXrQx5rVVjR23uTjkrNY57d4CCFTj10H3Qf4qzbv
	 sKSlQBnMdj8/wCif1siP4/vqX1YZQ/26CN/tAo/3/6eT13ob0Xf0xA9gNSbgws9QNj
	 Z8AJ1uoPxXEChJ8Qci6LrEEXRbJMtz389JQMWCQ3FyL2CQVyJ5e8BWVc8eUMPdo+A1
	 KS6xIIa+PVQAByJ46sOcpR2VGLPI5Lm3RNdULNopP8CY79Vr09x/EbRGmtkbNHRPkH
	 R/VKGevRQ2mjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93872CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013899358.20120.6716693647014979293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b436438b584ffe2117ee2edb12e23968cfff894b3ebb87bf692e1a5051293dd9
Date: Fri, 10 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760138993
