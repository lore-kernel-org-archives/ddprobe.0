Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EB3134AB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757847594; cv=none; b=ZKrY/dSaADxu2xhhx1VsyofC/CnCrzmCtIweD8wlMXFAeplynxgNFg4IIUl/8g2JGzjRnm0sS1mmcB+bSUJr499//Tpc3VW/KdLNzcEVbPDC4quQnHTATIC29r7Wn4yg4SSCr4bcJe+13CXVyJUKpPZgP66XVVVAwiB4fGcEEJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757847594; c=relaxed/simple;
	bh=Ix/D1J3h1i9v0dYN0V75PgRRFzla7tHxYzD7INNboEA=;
	h=To:Subject:From:Message-Id:Date; b=DhFTLIB4Hekab5IUTLXN2Ou4w6JF1kQc3Q8/pz7p3wBQ3APRxwGH86u+DaHgZf7+NS/ZWUFkhiBMNc9dyaHVq8lNAQETv6QoDHVfUykK+MwbIDJQhskmwrSHOOB5eHQHGoLdbEuF3s6VamI6DqGu1fEhiX19KRnu/rj/2kYH1QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3Fqgx4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3Fqgx4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F76C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757847593;
	bh=Ix/D1J3h1i9v0dYN0V75PgRRFzla7tHxYzD7INNboEA=;
	h=To:Subject:From:Date:From;
	b=L3Fqgx4pUKKVb1uX/uFGs1a/YPTfvT2jpyL+n8dQD9qcd+iak12u+gzcrtWbozo2Y
	 UrdwzTC8ttcaTKn6qEozNlS6MYWUQf9kc0n6/BTjg1D8/LJKGPA9r8GGS9ExoRBj7B
	 o9+9z1EefDATdWyMLycOjYf4MzcpPHhLTRo5tE6e6SU+aH+sz2/imwrHi85sVSCyeW
	 k+AWpFo0uFcixa2Hvfy9lHQoCjLMRy7pV+7XJatvJ2/V8F/cSVQXli9hrrfG5Qf2MS
	 7vEYk9QJ4634OIwbzMNaZT9dwCm26bQvkDA2yh+n3SSiPVlFi16lA/l+3+qChtYz45
	 cR8JFm4g+KbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D5DCAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784759358.22045.4471791509330636872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ee4c2a2fff55c00c07915c005dc902a95b18dd829718075208d5d90579c184
Date: Sun, 14 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757847593
