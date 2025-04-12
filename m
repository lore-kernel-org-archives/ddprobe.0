Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1D1E480
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744462194; cv=none; b=jMlD30MTqzl9tuBLb5K+OnsDLvWFEaz1CFGIWJv3/O6k3tVqY4EwWDzBJwvvlrqGxoVJfImyJdMi7znJ5OUm5HOqg1/Vwp2x7iNZ3jUkWJjJcznP8eSVZniqGRlxwhaRe508Kv60aG+eKhDH4x2b8vUCarskxTXLMo1JzKt0ZDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744462194; c=relaxed/simple;
	bh=XScWv2h5eRrgH9TMGsvTEJC91SV2YR3rpyFRrBIAVbc=;
	h=To:Subject:From:Message-Id:Date; b=mk+k/Fhh8jvfUL9DMjWJCJ9vcXfV2OuB4/fMD9/O+YQJH9RseOAoWRy7gnvFEVezffIjQmZ/6m9L9iVJaMYXHEbwmcm0IH5se+hgFQsoR/S2Sdh3tImoNPr33px+TfNeOzKqpxuvidBE2Gq7/D5x4jSAFsN+Zu+Ozj/j6vpVfyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNn7/vyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNn7/vyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B86C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744462193;
	bh=XScWv2h5eRrgH9TMGsvTEJC91SV2YR3rpyFRrBIAVbc=;
	h=To:Subject:From:Date:From;
	b=SNn7/vyzYoo4EnjRBpqNHA4ah8WPOj/EQJ5e0ixgxggMFryYgg7c2/Kx3HhoFO46u
	 PEVmoceI5TlFjZ5ma5YWYJeP9mlwBG6O/jEqlNBxArhYWCGChGZogSC2E6J5nIbtwL
	 FJyUlnb6C0HhpDvnlBK8Hb0SD9ywnovduMFor4hSsaEqN3jzTS1TK6rDdYIahkz6f6
	 sbHv8/5BTDzMNkFh/000m7Y4YJyOjMEmH+Ni46eVcu3i/4TL4Rvw8kfdRrwNwbb1ZR
	 l85petPz/rTzokkTfgyykTFMa/tfAHRfqLLw4c1+1eCzH3+j8UEAMkUAC+H0qgmYQ9
	 Zvim4uPYX4lew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D069C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446219362.12920.10976259050447497587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0680dcea1d1f4415372f1c1625d859c234250eb9070e1502755dcf39c22262f
Date: Sat, 12 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744462193
