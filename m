Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDAB2222C5
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757998794; cv=none; b=JqNlIx9dDDYjGv90xlkhIRF0CL2cnuhroYwqXaAAqQWplyYREL8acwqYYE7svYPirVNtnJBjeCLN7WU35/mJrkVBzh2L6olCpH6c4ejMQ7DUC/LP0dzEUxVYvB029pw/HE4FhWVNaArfKtEuVHLm4Mm4eZQl0F+51Ch0+p+6ZAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757998794; c=relaxed/simple;
	bh=KJD7/5o4SXAAuRp+rjqs3ggtGrzqwqbgzI1BvCr/cg8=;
	h=To:Subject:From:Message-Id:Date; b=uoKm0B7GG3PH0dX332lEtEMIIpMSUmswaHaXgBeTY/RiQIgB9kF24rX50afnIXiCAcbVSsn7k2tRyN7PYOD6kAsLnIsadikfvX2R5B8cRbeFokGmKeaVBJlOdNul597bgTHmR5MmZcAtWxW/Gxm0Xh/kPRrBakPByIjgG1qY2E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpLaJmMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpLaJmMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1412C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757998793;
	bh=KJD7/5o4SXAAuRp+rjqs3ggtGrzqwqbgzI1BvCr/cg8=;
	h=To:Subject:From:Date:From;
	b=EpLaJmMaoFJFlo9F8rdcJpPqSKxJvMxGzULgGrd5LGazSgkbhUOIvJelw143xCy2L
	 Sxke8o1wD1C9buQAmCnmmcd8gF1whx9UgWIwhgH9n4wSa4FI6XtYK7TOWpNUPRMCqa
	 eorKCEu6bgGdQXLqjUMtTt7t9sTG3xG4FVKgRSnYv7HaQaya0YAIVII4Hba5FfJdBe
	 SkaYM9jZuyJGR56tw8AhWncitUfixNxPhqrXtgnWwSyD6fn+6s7LRZMr6fvfw4zKhr
	 qORjdV+2WY+k6+7Vso9inUkZibGlv6pZ6dzduUdi7l4buYjDT1BqDyPJ/Vg5HKojBR
	 RntsifQ9UmY5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED27CAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799879357.11322.7982254339038386739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8944e990493e72c5fd6c2581395fa51a0b20dc28aa3e253cb285814691f6b1b1
Date: Tue, 16 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757998793
