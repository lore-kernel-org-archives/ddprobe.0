Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF7BA50
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734653754; cv=none; b=ExhqsJZOogz5WCn2L6JE7sgF9brkr/e3jPXupZaznmTGQpWclHbBFfnPsALFXy2nQiPo4VjdUQa2PXcOqykktx+/d5VRrDHy6A3rtz34UzDHDoIYfFYLUk+yoqrbCvog7gIGhVszW0Q9JcUR6X3Btd2sRk6xRBcwe4baGrKzolg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734653754; c=relaxed/simple;
	bh=7cXsoVy+dS+VWyXajBOQnup6G+MRcY0xATs7cNx1CQ8=;
	h=To:Subject:From:Message-Id:Date; b=rDOJvrUbYMsbfjRVp6XqRbm86M9Vdub5YF+clXaakO5wRcNKZW2cstxuInonufQwB0T3MKliYnS2EnHOjoIpSevUOeolGI0tChaphD93EDcUcwfh89OBInIKLmsHx0jJcuu94oEqGAKZ3sMgIjBL0hfPWbiF1FMIrHImSsfV3TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P30oh5XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P30oh5XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C295AC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734653753;
	bh=7cXsoVy+dS+VWyXajBOQnup6G+MRcY0xATs7cNx1CQ8=;
	h=To:Subject:From:Date:From;
	b=P30oh5XL4wABTeGE5/z6vPLT3gJhYVfagxDNw0n5iJJ9uxVbGfPZMFBPIOOWyRd79
	 d8KhsOgiON7KaqkJk8AmhrGnlBA8SbfQ76+dsDBIOkFgNnTWVLUVORrybobiAvZmUJ
	 Selz5YoP8XeFcB9xdPsjZ1gqUjnDVEVhCLFGWe8YThq6+JI2+IsjRlnwTh+0iSZgQZ
	 XA+rGwps3lkpO6yBmIJwAJE9LIbQvQoUo1WzcbftFvqGnsOsYHE+Lf9UrOGPfTbc7J
	 R42yLAX9dI+pulNr+6a+jYpWcSt29yIWIwHHyTYcfWC8kFJDwyJp0HdN8aOUgmxfua
	 2/yJHLbV54NfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB883E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465375368.23235.9325745300171155291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d09679ecda9684a669b667050a4738819e52169ed7101c74a1c68e1c262ddbab
Date: Fri, 20 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734653753
