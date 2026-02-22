Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDA11DD525
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771751093; cv=none; b=nS9gWyWW9QMvE2mu7fqclRDcYfKgEtDl6uAChNQeWnirUC3DHO6uFDRgbDguP88yx76Foc/y8s0OYe7Vdhvnz+3lV4a+8x017LTmCVX4CKAIn13uwxyHZmJ/aK5IWzAK/GxweuHYBbiDw7kVBN4AptQF6M98/cnjaLbqpC0Gvw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771751093; c=relaxed/simple;
	bh=Wpvm/iZWu+VNCHN8tt8E6H4lHx9nspCKzjmx8f/3DFw=;
	h=To:Subject:From:Message-Id:Date; b=aMb5Y9krijTZB5CWy7vrT8rLDihfBCR2Wgs9CWGlhLwrLM0Di9wYPx+edDUpXVzzxuI655s5Ie3o/DdZD+KehxTBPX/rNaSvn98VMfimXPQu1/WOyDkVlu4J0H5s7xQR7v2ERmZtmHfEyuhn8qUkVbwm6tR1wwySeU4hOkETqLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7TQ8hGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7TQ8hGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC057C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771751093;
	bh=Wpvm/iZWu+VNCHN8tt8E6H4lHx9nspCKzjmx8f/3DFw=;
	h=To:Subject:From:Date:From;
	b=g7TQ8hGvNxt9DMDKKS//bUwr7c2um2e4WBuk0D0YPLHuDXOTqQFHi1/euMJzv0Jcc
	 ajdfutfmBYFL8Rg8n4XEVZTT6udfDqr1ksZb7EauyuJWfkmekSQ/fEDjf8wY+EDk/l
	 WMOuN0IwcGj3xJGA2Bl4X7oXb/kj4/FCLjSoSqErz43mMJ2WoweIevA41MQtdiksem
	 tl1nF6qBQV1VQKEoWVrFgJuPlRbzW2RlmkNf/IzJsJ+cb8Kjqj1x0lU924JQLPaNsA
	 paLek+tIxYhl63U5rFZ+2SH+IZ2k71cS0RjFTjOHHG8P9Sk5OIvmyyGq7B8Biu+jq1
	 PS1a3CN0cPgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773DC624A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175109358.24782.16616651867756889378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81d979c919e4176398fd3880af53855775e38f311997a96ae6fb85a23ef5be2
Date: Sun, 22 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771751093
