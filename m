Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448651DE2BF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747631994; cv=none; b=jDC71vY2dn0WquT76Aqllp3pYaPLXGwxTbaBDxEV8J6o0RxWygjjR0W1wMkLXg0dlnYV8rydgVSR6YCxR2zqePasUpwn3Ne08NO/4QKH4+uy0Yu2KHR0j0dxyUFu+pIPaWntGZCsHJFHkPpxBv5Gb0iqAgbmFKpUT8R/hReLK/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747631994; c=relaxed/simple;
	bh=sUiVEEx2IeIdeKBXkT4kEO2L+I1LOMNPFK61Lfg86cw=;
	h=To:Subject:From:Message-Id:Date; b=oP6trvirvsu4lKyNZRRM9GvaWd3mfhudl4ozhefmIhaNr38TVPCIdsxVXI++2lWmBiq6VsJtgAdkqAFNdVNocz0NHFaKlEnTwleIwA9SaWKRy0EO4PEgBsmY5726PbcgBXtSm2fS9dieLV9YOVseH0B+HkAcRiKau26qHJ7ljxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyReBwWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyReBwWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747631993;
	bh=sUiVEEx2IeIdeKBXkT4kEO2L+I1LOMNPFK61Lfg86cw=;
	h=To:Subject:From:Date:From;
	b=kyReBwWuxzaSOvkrtDCl2hGCic+88UEf7FSyaR3S19QjoV3B79kcUejDTHHcoFdjz
	 SKXdqDKozDqOB1GEP0yfJjrcZHoIyU1sBWVGU7ndalQa15xgb0RwXHx3iwB3uw9dsU
	 qZCZ2TGZfLdtCqlJmXcA98fLTe1MJmk7rqK5mAVMfNrmf3sA223CaodBmR/9Fo4r+D
	 b/9rBKGnJojZgW1QpJFhuddy6wy7L06H9z/rdhdkuYh01Mi5dI89Bxlcoeq41/yYLH
	 j3wypfY3jTCMH41Uk0RjQBbktTJHfnX5+8VkjkIjcfqMSVjFwUmYsthyP/R7MI8NBL
	 HwxBnk1+9KbkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9DC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763199357.8621.13917676163669560495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2bc8d7ab6ad7b2b4470c5a974372638d71283c1e01b402a37c0fccd9dbff88
Date: Mon, 19 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747631993
