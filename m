Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D413408012
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780473874; cv=none; b=UU453Oc4NIPvSxJMe5H0dYP7S8Y+3cuFepk2hvfIBCJnmta8fF75dhDXDrgGpVqH4xifJPPHF/TRe+pKZyK2dn3aHLxRrWqiaV70hoSctTe/tSw3RQnnZFvuFaMdUss5XHbVN3KETAhZ2MlB/lYtpXbS9ekX2Idha22l36RPf20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780473874; c=relaxed/simple;
	bh=ACTWwPDSClfknVeK23cq4CzMGIZpPbvNye+hLV+w8ZE=;
	h=To:Subject:From:Message-Id:Date; b=o9I01r1rYaIcM6OieQPEZIRT0mhzYPGPdcsZfXSJ+qyU070UGB2KrWF9kfrIFY3w64EyLx57xCOe2KA13FRULyLds52dPJt+fb6m5BoxcphInixPFychmcTlSp2auo/I9bi7Z0IjY+MhukMUKCKsChWYhM0gP4rPKe5Zf5JUjQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+klSLtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+klSLtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA8DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780473873;
	bh=ACTWwPDSClfknVeK23cq4CzMGIZpPbvNye+hLV+w8ZE=;
	h=To:Subject:From:Date:From;
	b=B+klSLtJiIQ8hCWkXclyfw2FL/WLAN9M55XwyZrECqLrZVvITMG0NXRFqIoHjDwD/
	 +uaQSRM0HmpvW95cB81BzMXr/hRqK180MMeOeYSiWnMHFE7SFWxvqhPE3A+/Yij06s
	 qc+bbLcvYAr1OkQaQN/po3sRbkjD3Wo9Z8+MOx5F+3jfEjgPpUUMuqbHMxKK0Vkw/P
	 2dtf3t/SS2ijg5vsdsHIfU87LMJjoDgcFIIEelYxaL9ySCHXgMY7jyXxT3lTm4Q1lx
	 GGl1ZzJSROdaatyWFxi1OV9M6Sl5vR2ccgT2rFWujv/RYO2wF0fxa5Wl+b9njS15/J
	 PwDXv2eqa56Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D6CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047387368.15383.13022058894726886921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53517b94950b77a35edf0d0812580b29b33ac9ae677e909ce10ac43e983abd4
Date: Wed, 03 Jun 2026 08:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780473873
