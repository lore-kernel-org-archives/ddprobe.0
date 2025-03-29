Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD514182D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743208793; cv=none; b=CYPOvb2n2VlSKN+2jL9HOwbOuU9J9V3a2IsuI09UrSdYmqjKU4HE+KrlQlBLIx39B4SEkkMYsTV5RoDmx9JPC0hbJ4DKBLrGLgZx/N6Et/IEeQiTeBzxRXb3+H4J8SdXQ/E0FZ5kPH6SWl0Al5gc0cSoXLDBGVo8EWo9rVvfP48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743208793; c=relaxed/simple;
	bh=DZ728v0MaqrS8lbAt1dapUiqN3vXGB1i5L7jqfwoIsA=;
	h=To:Subject:From:Message-Id:Date; b=otKR1Nz+EjAQpzN1a5HC6lpuWvclXBUYgccr2vbfg2G25YJ6U2bIKBRyyBgECn3BXP+wyviUek713mtHjTZ4u3zJ9R7M8vlMxJP3j0B2+ejNPZYEE0bcZEmhVHVFkMfssJnYhAGljW99ad+j06LvzSLQ35W0fVRQiJZOaeWb8lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGTqrPgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGTqrPgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB21C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743208793;
	bh=DZ728v0MaqrS8lbAt1dapUiqN3vXGB1i5L7jqfwoIsA=;
	h=To:Subject:From:Date:From;
	b=hGTqrPgzSh6Nq6dcyW6S3i1sCAFt4Mof0FVdkr2mSqamTbS7F9xs26fEq4X322gzS
	 xReZ2KWFr1Y5doPsxevAzaqL6j68qjcN8zTg2v6OyuSlUnh4+Xqt8XazInk1ByYPpz
	 HQMBMpHw+or6sEGfRVntw0K4HGYBT4wdAY0zppMPYE3J6AuAS7SgQj9qJ4exHdOT49
	 TCA8jSiiIxMDU1jU3vpW9ECRgIt30ym81Eh9FSXrgxB5NCXU0cCYQtuWby1g0LhAHC
	 F/sdlfG9L8deA87vSxjmBZPEH0DZnEHg/HB6s06HLKkn+O+O/K3ykuAHVBZwYRMSqa
	 P4N74QJYq8Yqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82FCC28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320879364.3821.13623920311605447555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0af7e2423f73cb099b6a1e095d5a60540c76e42201f72dd08ce97169a42265
Date: Sat, 29 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743208793
