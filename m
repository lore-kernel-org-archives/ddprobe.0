Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECE18493
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728222354; cv=none; b=Xg1mdV/vg3h0ZDYZa306eXKlpulvtGWr07xKAI5u6Rn5YqGY0y7n2ZeJWDGlzkN/4TMB5WsBrRs1q5jvEkwQmdj0SPBWLGYpH5zHtF0hfsjUNblY8sj82mA2kMXWfGMpqbG4Vcq9jM4kifDGa0RhF0cE10DTFuIy2H4Pij3fCBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728222354; c=relaxed/simple;
	bh=g4NfXZ929Q+5pj588RZQf9dDfrIk30HH11lLxpBPs1M=;
	h=To:Subject:From:Message-Id:Date; b=OTLHSmrZy+V3pBcYF16XnY0urDVF9uxPijneUiw4VehsMS1gZTA3HcaAiq4s4RDrZ57p1YHgSEzeWsa3BJqm+nfMCFHZdSRK4GBPnd9jhfHLr/n8SIl/lb5ZH6ahmekDJ4HK+hzI/FjXz0Ps0Ls2uLlZR0NikL60C4tSMMVixWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEzxpYkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEzxpYkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA3C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728222353;
	bh=g4NfXZ929Q+5pj588RZQf9dDfrIk30HH11lLxpBPs1M=;
	h=To:Subject:From:Date:From;
	b=JEzxpYkECsnbXnkfDxk93c0ZXq61wwlVG/+L8JKsd6oVzb6BnsuEMcFAtJA8BSN7c
	 ADJ6s+FjH++mWIJOisMIYvFqrR/Nl53v8ZcXYqkwi617zypehuYtpVzOvc/tQCYd7C
	 VsJkGyUIt6ze60ObIxKjdyW8rLPFOARvStrjW+5GrdR3YIHzrRzi8mfJfvB9tS6zb3
	 c2XPKN7hFq24Fx6XybUpfXgV7BUWlWYg7K8zYtCtrvHsA2rNYjp1JnRj1Rw3C8Oalx
	 9suaJipAGdAcFqpLkRtTc1n2v4ekOfPt8BVjBW+SjrQza6vchWz5SrenD7R5eZHkVA
	 VqK2wAKGCNbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96657CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822235360.14379.17631673767856266157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e2320ce60920519f41785c5d421df588c1ff57763b23e3ae2795af106eeb18
Date: Sun, 06 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728222353
