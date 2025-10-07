Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C92221FB4
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759820394; cv=none; b=k0zHD+Brm87f6cb3PPN8KY7C9IZxR9DZIA3b7N9aFXx3P4uuim1Sx3ySrzEycTkfbUVr9w/Vy9mHiBYHwzf0ADYJ0LUPaSACVGTKSalSEQRREfE2HK+JJEj9hMHSxN9ejMcl+5dKtyGS5VceH2acPP49xecel5t5Yqr9OZItWkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759820394; c=relaxed/simple;
	bh=QGAdtJxz/gTpQRY/IXOXu8eYsFT/dq0pgEEzUNRE3v8=;
	h=To:Subject:From:Message-Id:Date; b=CtmM+JvQJt91CLqCVLZTDxwUjCm36/OCb3m3PLZyRKaxiG1wEVRq3/QgXGhUb23WcR3KY9TGUm0m+G8AOx1FMiBhAqZllYqA6kVqMQGXq3QLyAh+fMVCc7k2dweqRplVOV7wbo3chTqdK8KZjkqCLC3m6/+W2OJVqBpOP2r51T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6J3QFaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6J3QFaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5651C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759820393;
	bh=QGAdtJxz/gTpQRY/IXOXu8eYsFT/dq0pgEEzUNRE3v8=;
	h=To:Subject:From:Date:From;
	b=H6J3QFaWiaQG8v0SaO2qEb85wwEIC019C0Zc9a4NJQS//WLZ1ePKXwfXXOyNsgMdd
	 UBsmcqJN/t4K4hvl18nnpdBkyp9C34AnRHYlFc0MA6jAAOcB/ldzDWozPiLHHoZYyF
	 wQEplmfx8le3U8tN56BrjHgNshdwQY5Av2/md+b3nSe39DcLZDQ6tNORNNNoMi5Yt1
	 IGI7fRLvzyNZqE6UG0d0eJn98e+u+IZp273g3iwZn2k83jhfVsnJyoa2fuVrfzKIyF
	 13nQjylBBgO1ge5tE3QLctoseG3XZO36Wgg7HOUeVFOyCaufkBPFn6xTXbBjAN6t6A
	 X+vM34evDArWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143CCAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982039357.23873.9256348985547870559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844a46e8a61955bb7491fb35566f573dc4aede36653ffb6392cf7d2dc751960a
Date: Tue, 07 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759820393
