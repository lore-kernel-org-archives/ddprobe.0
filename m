Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2326B35972
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772908494; cv=none; b=WJyEZjzbpRMlBmA3XOYS7T/7pO1ickjjtDtd5c4vWTheKfNiWpfbewOHdlUD+dGNrAK9nFvW3Owt5HRXk5aoHJ4b2608VRna+eEdOPDb8UWn71NWMgcue7EwC3W/HKrPJCDGh6HPwwLT7yEUyO16zlPpMp1TyUCAWkVqIJwIwpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772908494; c=relaxed/simple;
	bh=KKhByzEKY9Xb9fipK14Z2ZQOVacluTTlJ5b+HDop3N8=;
	h=To:Subject:From:Message-Id:Date; b=ht++Nk8a81Hv3tYydLK6ut7OIYrCW6UJGE/k+kzaHY8INJdVVv2S7PRSho7uC2LnGiMGCt4iKQNqnM5QJgOveKPRf+a1KXoaqEVxi+H2Cde4PNgpJd7EgIe7zzGUm8LUFHaVWCVPm/FPQpC9m0sSff5GScrt7GpYp6YLeL4Nkl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3sE4+45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3sE4+45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F5C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772908493;
	bh=KKhByzEKY9Xb9fipK14Z2ZQOVacluTTlJ5b+HDop3N8=;
	h=To:Subject:From:Date:From;
	b=a3sE4+45NhweuLnaM1qCv6kj78oiJ3UoHmHOgvjbHvRaoAcgYHjI4X8LIqfrywuzM
	 1UUbaauQTUt22rsu/UxO836I5LXk4UvPVVvoAiJGHSMxmKKNVNeUkhsu6aL8qCIC9w
	 /6YZKuYu8UhXBjIdLppw11ZCMh/e4JRxjCWHxSTxxj92Nk1MKDAIcLkXT4260LXT+C
	 AcSZCqi27XCLUQjK8eGkeA/ay4wZmg9ZIFgRarfs88PmTl/5BNElDxIeG2pxcOQ/p7
	 nTyj1Db0vcsVIfaCZxYM1EF2f6YmyISJ1QmRaOwrn7Q9FPUsmmDGFCPrrUJWJ8JD59
	 ieBfyNtncllXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9669EF55103
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290849358.7386.12918503960854210867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de09754a1bb9ed7fb8fa8d5df7bd3f269ef081df46779e1070f1c9b86514ec45
Date: Sat, 07 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772908493
