Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1932B4685
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753417794; cv=none; b=Sxvp2uFIpj/pd+LdxH8ecdRL0LJA43PQ5jdCw+A/uMcrjyXA4/v4id1Gezdr31gi/ngTQ/rOXPc4VA/yw8JumbyKCjDjAi/g+Gsxo6ePqxxAjCvN3CICfnN35ytp8H7laq4vKBrZcUShsJiZ0/C+TPMUGawARntAc0heVA2+RvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753417794; c=relaxed/simple;
	bh=MB98GXzNhZ8EqVLySAES9a/fx8o7kzdAfJT4hRpp4PU=;
	h=To:Subject:From:Message-Id:Date; b=mSMQXoU+17iKHsXVHMHDgS1/Pb1KpweWBURtVDHHIHuGKZny8U5QMYK4iJ6rVgFbrKtsPAWIJEgU/Pau8Cnq2aSS2pZJJ6V+3xC5j4Y3Pfwd+pSNUUpiI+yIwmV0SKZjgGKmrl+h9y0A3gwGG0KoHCoBcvTZ+cx6uHjSSQta3bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQtFlp0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQtFlp0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ABC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753417793;
	bh=MB98GXzNhZ8EqVLySAES9a/fx8o7kzdAfJT4hRpp4PU=;
	h=To:Subject:From:Date:From;
	b=ZQtFlp0+QrF45M1IIJ4RXShQ+y2jJUALKp6zK2wfUgJ79prhE5iRiS+s3VBBQbOjt
	 AxxX06nkuifIk9LJiXK9X5DgK46K/dKLfSJOUIG6TQ8CvZSLMwljEwmQJyjWVMlYNY
	 ueoyeDODrlJnx98y0+qty5hww9bnv+kBnxdYl3iLgS78oR3Bny2FqnZf6K2136uGB2
	 +Xdzzm9O1I8y7WaIl0nJmJRuc2wN1PuI0Sv1TBf7M05iUCFdS/a3/CYcD7qnN0UN1l
	 MvuYAsHGopgWDh1IfM165Hl+SeiN2GFCZoaCb+YEkFNKJYCcBiXe53xWXvT0oaiL0/
	 gieAgUMcOONAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9AC83F27
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341779359.8195.7685703046155675309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20c3d1f2a6626077ccaaec358b650d790b756e1bd633658c2ff695e9dc997b6
Date: Fri, 25 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753417793
