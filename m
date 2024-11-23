Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDDB225A8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732404354; cv=none; b=saWxaLZuLaf40VzaDD2yVx8GU1lUD8dtLMVYVaPnxwCgKeCIV2YN3gb6lo/fl3X3W8F16IgoJC/mMdNHhf0GqSQxlPvej0M5/jgzdvNJGy3VXAWqhNIvo86xe7vEbEEXDXjf1UD1gtvC2L2ZA7XEs1iCBiSMhzrEvbdt1piwZ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732404354; c=relaxed/simple;
	bh=rJVDHBKRc6XrqUOeC6VgF4ExWfFoy2N1ASOJe8Oqj6Q=;
	h=To:Subject:From:Message-Id:Date; b=GmYC/AK8zAGYG4XIOo86UR8Fnub0xoUvnVgFqKZ3DPn2ykoaTk7XYrposWRjlz5J0Q6kWsAseiwwlGWUgwGj1xnhB8RsRoWUe+uu66MSaxeFTQv0zwIUdtbkUWqafoPtteM6Iv81EzbteGW6i9ZcbSOd/DX4FozVE1MHP1cXRUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zczee3Vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zczee3Vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA274C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732404353;
	bh=rJVDHBKRc6XrqUOeC6VgF4ExWfFoy2N1ASOJe8Oqj6Q=;
	h=To:Subject:From:Date:From;
	b=Zczee3VgvtZ32MjyZ6Oyqn3ePGYLTLMl55U3UDCm8TWkX3HkXlbP2F2C27MErK245
	 Nuu6eN7M9kdzQ8gvcgmjvZx+ObtYXtEo83hhV/cCxnIhg3UDrGFQzoeNfv1Cn5dAYb
	 M3uzopHbAS3X2NBEq7mt/+jtLrEk5UfZ9f+MogQLY4I2rRFNgERbwmfMFcpkhDfPud
	 u3IzPWR2KQAerLJStqBoD2Fnm5qjjtF/ytPfrO3evGNxKtaxwMiaQzgH4Y1IkN0MF+
	 DMD4gdl6cUgkwIT3yIjcrEQm7aBf9opib+5pfgj6VHg8saHUKDrbGy6CKmJuP4Y5y8
	 rxe07Ortm6DRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1549E6688F
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240435361.25109.3119257296232666505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0db33e106dade773c329ef14cd49f63533637ed7051581afd53655da9dab41
Date: Sat, 23 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732404353
