Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F038035966
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767980634; cv=none; b=L1GQ5ssZt31A/252rGmD5OhuaKiV5vYkqBEpOH/TlYRqpOSPOdFiDmORtI1gLM+TUMJKN3RCU1ClWSa35XPnEBme1V0diuZPQpw1/6mYYoG62qnbhjw3obzxe13c+E7u92n0BAjua0KpT0KP4pokWhqUm3yOY2c2KWmGsNtZz/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767980634; c=relaxed/simple;
	bh=YEye2/wo9e/Sx8+WvXohbcN0NUwHiW06hTUK/8Iwmg8=;
	h=To:Subject:From:Message-Id:Date; b=Ggkty1LD8W/6364EKKugGK7DtK+61HveDsawmCidBYGseGo3C18OBMLn5V3K0695GK84FbnMU28DWsdCgZRmnPlo0FJ1OGiUgOrKBlWZjIAavMIqTaaO5yA85zj2Wc0nuFWO4Y5TfvFJBu65zHjjYqLT/sPFRb2bRJ3I94ZqfhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOodBjNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOodBjNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB8FC19423
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767980633;
	bh=YEye2/wo9e/Sx8+WvXohbcN0NUwHiW06hTUK/8Iwmg8=;
	h=To:Subject:From:Date:From;
	b=UOodBjNYaALJuIU5loxHlUSB1onYVcf0mg5rqMSs2i8zn0rFqWpn/z3IbsnrOCeXV
	 GGG1tz9ZpuJjE65yRLct3YN07+hnrd9+lDb0YTHobQRgUtLKapXmd59cTJlVWHv4Q2
	 zt7KWnAZn4atqFvywLUEnWwlls63Khm9VwBCxn9Fw3T8q7KhqY1nRD6KwUwK0BLtsx
	 /D1m6h21wxujNy5VaMGhf5TTeOHYaB1xPpZitPO7B02oPRmuQmh/igAc/be0RIYiTl
	 ehZsSRa1xhaomnZ2DOEkOhfe4JY4ne9qJ7gA/nNNkq20TiiHUTaERZ0WtEeVPIGdSo
	 6l1FVss+pIlig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF81D26D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798063357.9799.11635523073478539665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3fdf5415877e322130b7eab2273a9705321f7bd3f725851dd2f6ba06952a09
Date: Fri, 09 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767980633
