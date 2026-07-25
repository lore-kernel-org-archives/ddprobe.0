Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF711E32D6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784950834; cv=none; b=E4AF/JhH61s/Sxlp74PxyBY2EKR8m+NiZPq8K5CcihEqxFBbJcbErjzPVlf8g8r+O9VhJ1OcROzeYxDuUJceFwjqSjhyXmqm3URB0liOw31QJ/9hw9WasF9PmIC3WLd8U4Wh+LIr1/eK+14C/Y0uRizN/7F/kgqTEkaO3YZ2FjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784950834; c=relaxed/simple;
	bh=5Q3J9n7anCJUju78YaD9f+Kh7yNIJu6dSts1viY44oA=;
	h=To:Subject:From:Message-Id:Date; b=muLLh02TDqNWYcVj+d7F9A9kcAtgai3tLz8yrp0LHi+vC4WIYtzEnpG5A1bE/UH/K3YEIgBcR44bRNmV5fxFhpJ9hha5cducy54G1bKFuKtsl1Cf0Gdra+lFtkcn2ds7mJ0UyZM81vdCtaRUvtITLJfzUwgCY7u3D9/iP6Gz9Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcnYEuhr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcnYEuhr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C0DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784950833;
	bh=5Q3J9n7anCJUju78YaD9f+Kh7yNIJu6dSts1viY44oA=;
	h=To:Subject:From:Date:From;
	b=dcnYEuhrpR6FXjKyTrs2qjHg4V4Km+Fqni5UEj0NOnoOkJoYmIS/AMDQI12kcF9Jk
	 Vp5Uc01fHGVxvkE6ZKLSsIRQWuF3kaa+Gi3g6oKS938lDoG+VEq+Q/nA5rxsCehSPq
	 fwVaSY6V4rA1ucTFywLA5pNALM8yzs4A8INJNF5SzRQoIQPzZhmhCTojYuinxA1e/q
	 ms5ZyMCQ6UN26FfjSoIwa+jUBJh1ppohnInDTC3Ace4tC3YN5ECkpK/gFt4/Sl7Hom
	 DzcJV+PinI1GpNFPvKiX7j5IR2EMFH0j2Gpq2UqDdR/bojEcIJqQ8CtZ0p3wE4WT+U
	 mvMBqLvXdzJfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE89C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495083368.8027.15639404487629490014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a5907de547504ebce6e32d50ee5dac35528142bc924cd4901a58e315901b55
Date: Sat, 25 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784950833
