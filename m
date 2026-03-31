Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082443D8911
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774959294; cv=none; b=Il9GPhsMm0mtMq2gjqiWmZWVIcUTmNcLQvBS2PpbshyeKai63cmo99K18kx9UOx+dBMocISY36WZtUTLLn2iuL0ncxj9T3bC+U8fB96Rem5imsfx0wOEM6or51LxbP74A/R9IGpG9jRkgO0uafyxqh2f7HfGLNdtSnP00R2Qvxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774959294; c=relaxed/simple;
	bh=VRKyd5xA1A4wamMz7/d4xLnCbon/qm8G+cHBpVZYOcs=;
	h=To:Subject:From:Message-Id:Date; b=uIMuB9vIGGJqdFOh90gtA6X8f5sGFRx7PRd8WGL5oxxylZWr2TE59tqBMAWGNqz9Fwgrasxxq9qbAHwg80FPIbOlojI9i8xLd6IIADw845B6WZGm8+9i5U8Msb1kU0rk9IY5A1hcKjohUqpIAyPMzW48nmCDG8xf2BV0teCLHgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKJKRW9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKJKRW9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3791C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774959293;
	bh=VRKyd5xA1A4wamMz7/d4xLnCbon/qm8G+cHBpVZYOcs=;
	h=To:Subject:From:Date:From;
	b=BKJKRW9xD2i1aXL35x5Ay7kSL4F2pR8gE9buI+oZKCo/RktBqWbFuMfd8DxUtR1+F
	 IJuswzaxickYUFEspQu6YHiXJGmSnl0SPISjssff7pxd/QrcfuRxJDIBn/Q5iKU4Ym
	 Dpx5Q8lXT1J/PVWoVzHTkRoOEjdKjbGjpVbtvG8ERihXm4AuY9QELYWPqbwLpswdep
	 gUzlMJRAAvLaOPKgMNJe4c763I5Swv6HCxeTFc7wgnE3hsjDmmD6qHK2aWZTcci1or
	 bfVbNC1GZP3hsgfYgu7tsXEbluedgRdo9yVYbG0eqgs9cUCnX1XWuP5t15KL9bkinQ
	 gFMM4rzUojA3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9437F1061B3C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495929359.13937.7190078563626753590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc3495e9bbcdd5470e6796937f0bd9453fabdcd15678b2f29f15a83c5650303
Date: Tue, 31 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774959293
