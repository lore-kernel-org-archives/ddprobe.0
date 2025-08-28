Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F797314A62
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391994; cv=none; b=mz6QGWfOhA9O7yXumwId1DvLeqh/FhyzCk2E96wygNdM+eztcMUzrkIaef1I+q78tDvtLJCU/rK3OzcZn3gMJJueZtFFtDzGT8FqC4cncikRknzvWDyuj3PnkG6NhowYMutlukfpCslH7QmZc+edG9Hbpcep5Mvo0SWGlXwSwkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391994; c=relaxed/simple;
	bh=8XsHPksMoAzn1DOuLTywt0ld+jes5vhBIkGY7gQ79qs=;
	h=To:Subject:From:Message-Id:Date; b=asTh0j5358xDewWATfVfMlXDWsHnX9cUv8KWXIJDk5cy+UUkT3RAQRgtbdH39t+6pkpQ/CF/MZw9Rf79X2iFfBqr30owoHJ719juyya6LpL8hdVGY1+lLzOI0OiPjmreLOFKyAu1o2liWC+HfZGUTt1yjlk/Bz08dL6i4EvP8F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJUeEjKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJUeEjKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED94C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756391993;
	bh=8XsHPksMoAzn1DOuLTywt0ld+jes5vhBIkGY7gQ79qs=;
	h=To:Subject:From:Date:From;
	b=LJUeEjKGWvAmsJovUjfvawyKHkusfuvRr/aM5/Bn3ycmUhdrDCuBimBk/OSfhR0T1
	 yuOImC+W6D++H9hnFPfxvA37TLMRoNqRS+3lWvgGLN0JGK5KsQql4BogSaBYzJpAnC
	 +Jzc1AdpTwqupBH0/WxREF4cX2Kgz317uNyABTwgJCK65vITeU1MQ8SIIZnLvjkaf9
	 7Gta9JdO82IRpromGp5MkGDsm3URKWIIQIQ6BMcsUhGrQv/d4+fjuPxzKhkpir+iFW
	 qGInlDmt6RIml1o8KzbEF0CAcDELwNDa2VrZMkxi1gNe5MoAKOmWyqt9G0S/SQEAfc
	 vnAKaKryyXQqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9AECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639199357.4384.6694744559033198304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9a53a803646837d4a23a486099613f94e248d92c619234b56c74f226840039
Date: Thu, 28 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756391993
