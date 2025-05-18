Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1028F6F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747570794; cv=none; b=MvXLz7gQLmAeysRpAhvBJxtTmBgm1Xqto5XUmuOJzoys/IeVq6s7YY4c11+lygimIgB1BLO17xL3WhvmBpzDDebV6Ro+mQCzV1t0x+e48gCCGVnj9P0L6qPixOIVsy0qzLWFktiR1g2zZY19FF4UWF2eB1TZN7CwHVmX/U6Igts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747570794; c=relaxed/simple;
	bh=eSd3EaplHzQgPmEyfjD5oEjnMYfmRNRATeGvLVFs9mY=;
	h=To:Subject:From:Message-Id:Date; b=J3zAVuAOlDxLe31gDrM5Tsz2MvdkXC/xYxqcK9d73m5QngkRN+keMt8tjnGc1265ykZJ5Vr8dv9HBfqi1sg5NpQ0+uzCiQENGmG9tAcyP1H9rHfiJ+kAWaqDk26xQox8dDPi+HEb699+GlMN7jpTmyWJctDt7N7k0mGk6SIAKpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrFvLHBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrFvLHBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747570793;
	bh=eSd3EaplHzQgPmEyfjD5oEjnMYfmRNRATeGvLVFs9mY=;
	h=To:Subject:From:Date:From;
	b=YrFvLHBndBUbDnGT+ShuVdbOqPc8KUW648ZfNG1M4aXqclcVQVIOhxUeebJNSC0VD
	 z0U46KpX2YIL3ymwuOzC5VLdbvXlm5KAm+cLeDbgruJERB4VnTrrl79soxxg+vjFDh
	 1E5WQCO9ujU+iTdIVAlDaEDcBV8l1nk6v+0GnSzeMKnKe6agrKpIQ22fSsidNvKMKL
	 Cs8ip10/CzPzfhrSflRY763oPXaifPrt0jOwOPyhw5mFrC1p5Zf4yt0Ch0hfeAEhv8
	 l+8sulDtKPzhAM8ja82AUWz2VngmeUyUblyKrvZQlh2nAj3x8xvtAfcYp1CgSJrcO+
	 g2/IHO/XhrDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0FC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757079357.24213.8873700426961459478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3dc3a8605cfcd40af3d77d579bb3b6b8990093593ba48d6ccb727cb2335e7f6
Date: Sun, 18 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747570793
