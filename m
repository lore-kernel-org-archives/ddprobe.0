Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCA71F5EA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776623853; cv=none; b=JaoKgIOlfBvyJwKojfsM6tST/sjP7DhuRBGgMwG4B2CmucG+QqnZ3Junqtc+6d7r9PxM4e0NU6ZlQu1maA2otCV6o0tCRSBoTeouhDz/Lo2KkOG2wD0hQTFVweTwOG3ZXDal+lmIvM1bctQtK/D3TQF3SqGtFXqyxRSKw8r7ouY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776623853; c=relaxed/simple;
	bh=C/SgSt6kmvHSzjDC54qIPUFXK6bfiiQHciyFJcZ19TU=;
	h=To:Subject:From:Message-Id:Date; b=uBJNPDNn9EJOxR9gzoE3jUkBZBh89X6GXNlKgzLR3k5JgW8Y8FKEtk5kkWpopS/i2wNJuH4/ETdg5t3Is0pqR6nR/yGAcHewstCqixYg6wH//OLSYWWCP8Ny/sHobAwayyZXw7EQvl01iRv65ABCUrm2JWWwa6FVldWAN9B9+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXwN9LFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXwN9LFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B965DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776623853;
	bh=C/SgSt6kmvHSzjDC54qIPUFXK6bfiiQHciyFJcZ19TU=;
	h=To:Subject:From:Date:From;
	b=XXwN9LFtOCJgvAZrQZPCifomNyW8z+YBhO00xg7yQOPbVRS/jtlGS0bfWClvMFdX3
	 H3BX3hy5kB1u0m/DIYuIcSsBhjuW4jWlmu4JeCnV/MDaHEbZ05GX+1knr4Fd21t7Nh
	 IJW1AbC2gjW/o4OJev0Ky6SqrgQV1i+LL+vii5yD0bbWZ3Fz9e7JjMiu3xYxHA+rGd
	 MBBj2BhSEe80dvig+LSAgsMm0ICchtZiNSrPIU6J3maxctOC34yd+LXEev4INMQ1X/
	 rYMCNkm7n8lModWgYuCNgjxZMpIBGqJAn9WwXqBVRXbf4MSFproGVSKUBtc3JpAcWF
	 3tBgN/2l/UROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BFAEA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662385368.27342.7007479518171738551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce93007c15993a8b70a834b24ba85b273f7606946ab1d4c0af049734ea0f159f
Date: Sun, 19 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776623853
