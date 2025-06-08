Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE5713CF9C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749402594; cv=none; b=aFup5D02AlkID6MmFp9VU1flWsu1nqdKgSe0/6V6xfapXkMTbo6vxRBOWs8rOvZ9O4ywCp9/aDRnvEdvx1vBKBeHNDDHTMEnA0et3QLzjAmCD2E27vQ+XQBlC586Tz7YXVYwK6MtDDVE6tUrlVixPd8y9uqmdlSJpzbvSKa39iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749402594; c=relaxed/simple;
	bh=zXkw1qbZ6zqNnnrZhbJLOgXAyJ/dMZEEWtekcD5M7P4=;
	h=To:Subject:From:Message-Id:Date; b=fNLVEpzbq9Quk+nEaqvFqD9tUmlQHAYxtvuH0Bdr4HXC5eqhtkJS0Gh2MGa/KNBtycV/4aD5QNT1qoN3g9ecQ8nlaQPSXFRYvBTqpYzV6Bg1fsV/tTMFEaqS57jdfuU9pZbISUE2jNRElWRH0/mqqU+jMoSxSaIyR1kVKFpraKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is1yS1jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is1yS1jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2787C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749402593;
	bh=zXkw1qbZ6zqNnnrZhbJLOgXAyJ/dMZEEWtekcD5M7P4=;
	h=To:Subject:From:Date:From;
	b=Is1yS1jnr1s87i0xVNqx6gYEdrewUS5xCRmJA0ntL4Mk0OR8drVhy23aSoGrkd9FV
	 fmOdvqWqjtjbbnetlYDtBGeQ0a/B9Op8ibEMhksEjDQeksLR7xQ2TMQSVkFDFl7afB
	 1Kl8toCX6d7BkclsLRWrXn66z97Z+GQu07AuW+w3fyQk+rXxLXdasT9i3DMeXSF1Dd
	 sUY0nLViGymqiPkKQq9K5aA0rbpwYCGb3k2ugCQHHXfQz/+KCTryTVB675mfEOGkwu
	 FUGDSr+Q3Sg4wZjd08deZOMwV3gL8NWId/p6oiOZqUg+Eynw1GiIGyNbv4RLt175Ls
	 Kh97QpoiVXJog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B4C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940259357.26444.8122310149796298126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93a06fc244bc17e83902e43d0833a4b8bad10a205990940503cb8c75b518a3e
Date: Sun, 08 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749402593
