Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75A31B87CD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735885554; cv=none; b=loo+cU3CjsGwORm9mopy3LcjSNzULGzev6iRjGUM1xKKgiuM6UChBABcT5Ed5jmc/sDNb61HO1QgxkOnshyIkS6aSYFEvUyI1bjX4rCCOW00hqA5PdNnGy68Q/dKZiY/9Qn0PcYmglzK8ri59n+qSuiOsKky36VKFx2mP8ho2XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735885554; c=relaxed/simple;
	bh=hx3NZqPYLn+k1zzmdyz5yVeZqP+gSwT1+GNmqEikz5U=;
	h=To:Subject:From:Message-Id:Date; b=I15FYEHwoRtptIq2W/t/9wNV0D1HqBcmzm8tjnAglPlp5nEmMzkC4BBTtbetdZeDba/C1rngas1+J3T998oeUOD8jBRgrJ/jOex06C6DMa2AYHp81EAbgtUmok/YJfvuSSvfgrHzlswPwtNH2A29lPV3Ae/64X0mJsPi+Gam4MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jp8ZSb9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jp8ZSb9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5D2C4CEE8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735885553;
	bh=hx3NZqPYLn+k1zzmdyz5yVeZqP+gSwT1+GNmqEikz5U=;
	h=To:Subject:From:Date:From;
	b=Jp8ZSb9IJxenAEC61B1JTDnvvaGg1FHpDB9Fke9FPk4MH69GMLKq2dOSAJmluPLCC
	 bQnA9DBqZV5tPUjelsz57K1qlqJ7iFeXZWZT+bVRZFoRK/knGhLnFELOk1xQMxTa8x
	 KEjuyiafXB4Yl9sa5fWtTpKEhpgthjZerrv9LLH+XjYsBx6VV53jZjJ17iZrwCZHDc
	 2N2HlXfGEvgO9V04mZA3C6IKE9WtR9n4xNREEVTJVMWPLZhjrK2N0xo1Ref9RZeMCe
	 Ly27m64ebfAAcCvvpr4rydL9H0rTUXUEbV6XQf+G3APcMkrhImrZJbkkx+wM2Ai9Xb
	 CCwj4uFsC/1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9051E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588555368.9573.4652436201154071395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0d26359858744346941db142af9cc0f40321d93911eec0cfc91e216a8d2c99
Date: Fri, 03 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735885553
