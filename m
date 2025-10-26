Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD6876026
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761507594; cv=none; b=m2DNJ4L2Qe1jTviRsnEAuvNExDnmePdBjKicAflWvq9rDGDsKawUEI1H+I5VXLeNz7jWj+7J03covS0zHfPB03YsLpynVK7ZDHoGrg4zWc63DV7TKEr3VZW5kRgHZNOippXHS6LHPPxiJivNHDFreEnAPTRXGUzvdnSHx3lWePE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761507594; c=relaxed/simple;
	bh=549Trfody65iUgAw9LZajtWm9I00AxtdJvBaY5sNlM0=;
	h=To:Subject:From:Message-Id:Date; b=edj7x4uxukbjX8J+pvB6qlsxadj7P/1IHwGi3Z1udvBaHkOYxWMumvQu5xxOwxKt0rl2TgqVDEgjXarqaVQQhjHHZq33dy9KaDKxRr3nuxDZQCpGg1b3DOd30bTiJ0GPAmSZ8BQZYVqLhWFfgmQ7LDOunCl+YYH/ex1vIVWAsqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0b1e4zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0b1e4zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5DBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761507593;
	bh=549Trfody65iUgAw9LZajtWm9I00AxtdJvBaY5sNlM0=;
	h=To:Subject:From:Date:From;
	b=s0b1e4zfjr30dGb2r+YJMB9ZNDRdiNUm+O+uBBPre0j5u6/GUG0KsVuD5XGEEAQbJ
	 zUYH89x1TNnxS7PvEyfcmiMn6JwpHUlx6n2hfmkMhvtpklN29ElhEBtEhA+Z1GMrs8
	 dI6t6o7IaMrPwJHkwGu8mYnytKNLJwKELEtfReGhPj2KF/q87tJGepLqBFpN0vhz1u
	 yjPmXpJICVIhZrLeOWQXvtCqFuv8ZaouvvbkqSKcuYee5qqJ8C1tUQAr+HwIK7wMte
	 LZafjJfRqddMd1bxcdjENAalkxQ94ewWNGHbaRcpiZZ5mMGMEYsJBcRrR3bOl8UZUl
	 9tbYSVOc7BBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AAFCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150759359.3754.12215989094554993158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4755a65d6ba554757df6ebbb1e590a71b319098024ca4346ba9be687da68f27b
Date: Sun, 26 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761507593
