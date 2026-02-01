Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8642F851
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769906634; cv=none; b=RBCJH9kFXjWIO6FTpa5XMSZqhLamvCVfqThZ2Wt/j1Q+xemAR6YZOKcz/SPH1CGXbhsLjr06rYWkP7eN8coHz45pvmOtpMc1TrC4CjMfp9ut/8zvsCqswYHRXeJy6Ab3oQbDU6OBiXtYtibnNpNhFAVOI9BQ7fKPmbilJRGKyP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769906634; c=relaxed/simple;
	bh=4FE5VdFcWfOjS3u2ST6Cqtv5TnTebIpWYF/oQVbIJoo=;
	h=To:Subject:From:Message-Id:Date; b=qL68vKgkF1bl3LULeGwsBBBX4E7BxDoI+hfzDt2VYG1iXWj0TU0FW/7pQjUPGY7sGAFzwB3UjJKC2Z63C+Zol5vmtgDBnGF8ug0c/HKHM2VTGi3n1HVQbSc8U8330X61yFXY7t1tG7DAQPvf75Fer7Pk5rKiBEyVVs+t+h12dvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAfFZubz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAfFZubz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD30C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769906633;
	bh=4FE5VdFcWfOjS3u2ST6Cqtv5TnTebIpWYF/oQVbIJoo=;
	h=To:Subject:From:Date:From;
	b=EAfFZubzYL2kG8Fs0Hc5SjhcnskrRu8YDpfb0djX/+/kJEf4ZEUb6UpExzBi1K2W5
	 Q3EhoSKasDrHSbRuV4HFQ0txF8W/7q1l2COzkZ7+J9Mt0h242vtif8GcdXebweLOXR
	 jnax9wu8KD1e7FZxSIjP5uTWax6D1N9NrODYxs82Jbb2zBu/yAMKBO+tqqqq19NOxP
	 9NNwjznenCE1yW4ukkh6cd+VInR56DkfFfLtDfZuq2eB0zsyhPl6sVgTbTBEtDZBPv
	 hRzxYqCEJQOhyxQtOzhbhU37kV0W73k/7JIl7Ij6od17Aet9XKQ0qi9QPXdOn+/Ha1
	 E0MoJep0R5ntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F0E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990663357.13159.15963227191356967752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a849eb32c5f827ac19cb094eeeebe0d7845473d23b0f6105003d68fb0b2bc571
Date: Sun, 01 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769906633
