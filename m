Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292712264D3
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767411834; cv=none; b=X/lm0XJ43Qyt1pCfw9e1F4pQA0USy2VXifZv4fMLZyzMCBKF5Wd0C/4utHnJhA7RVHvqr+oROJIHAQ51/gbOh+EKyWBJZFWiZY0dE0p/I2lZZnSeJpQqBGYHiMfUnGW71HV68X9luA3jDbWY9avKpQY3mnb8/m8WJjCdzERh2oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767411834; c=relaxed/simple;
	bh=UH2CaZp/C92qmpfPU57uen2GoDRH/jz6Ec8JfjwYFis=;
	h=To:Subject:From:Message-Id:Date; b=LLIzkP1/uf8XezZuqDmzzbcOx70lqQ9Hn0h6BDNWjl+qCSVmG+9Gu+YPstZcYjqwBZMVrzMquHhQ/gi6guVkHepfPhYcgnhbj8GE3CSEF3bj2PRXiGwch7rXHJ7+hn3Ydkuq93ecBazL+q5e+swnKwiDTVkyjLPUTSKS5/6OP9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8CVaNIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8CVaNIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F5C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767411833;
	bh=UH2CaZp/C92qmpfPU57uen2GoDRH/jz6Ec8JfjwYFis=;
	h=To:Subject:From:Date:From;
	b=J8CVaNIi7gZCuURdkTMj/KBTWMyqOT8LEwkUPfgW6OqL1A0aBxd0bpLtZtBtg+H6k
	 lYhZy+sG2ea6yFVN4bAdsXS5QrfHpQhHonn7czMrE7tOuUk4Sxsf5YoEPvRPybrmIU
	 Clp+9QiIBGCSDUITHKJAp2sOsr/e9AHm0XpVavk32j1MaOyXfWJtX8GFWgZZzKMnNk
	 mvf1vzg9KFbkG9dTaug2+vErvpl3eesD1eCCWdc7dLOZOnpiyXdcmv+ZyiBoAwXKhE
	 9ZqLjBFHvRA5RzUGvuXnkp/JWIQmQzCrDkAfA9qSQeo8DFl5L2K1iTphpzNUNnnnsW
	 pfs1UESna+j2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB42FA3725
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741183362.16959.17879233085029183766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d40d8850db5ff62b5dae93049a8acad0e7af1f79e63c3069766d6bdd4fc718
Date: Sat, 03 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767411833
