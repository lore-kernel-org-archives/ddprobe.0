Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3028E188735
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735852554; cv=none; b=J7glP1p8klCiV+hrojmNWdjDD+zrzB41YIGuqRvfvgCeR/Xn2h1KNYRgizozjRatx7zp6E+mUkNJz5G0WYzX1Voc6ASHTHNmz3QFtVUZ6nMlz4wDx1F4C+VdaaJEWOYcy+LJ/KGoxMq7DNRvGUSACXsZwFVWcdWhGxycRjkN8VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735852554; c=relaxed/simple;
	bh=3uy3nMwz/ijEjrIz17TIothz2oVA6KvsyIZ/OlJ+2nw=;
	h=To:Subject:From:Message-Id:Date; b=FnmNkZm5zav3bA3Nzyc7vdbNZg7WYxTFo81Ih79H0tcbDTa5lryko4rTQCdTzeiugw2GC5VKMlIxqtt3g1/M5Fd64OAO8/sSlyEIHJFYwVmfUzBJAMzVVYHVGC/D1rb17h7mOY3g0wyWdyQLrzpvpaT2LZ/sS3tk2o+dd0URvXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fv/85LKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fv/85LKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25EDC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735852553;
	bh=3uy3nMwz/ijEjrIz17TIothz2oVA6KvsyIZ/OlJ+2nw=;
	h=To:Subject:From:Date:From;
	b=fv/85LKEM3ed1h5Ty9qIVbJeaeJlx7THp8c3uMC1GLzissSPADl5HPfGq2DGQ/733
	 gVykdnxCngyqWA59rRVRLtNrBTrJ0cbwIJnGX3KpulkiWyxbTkEBKQecytkstLGnsg
	 XLDYkOY30zUrsQiKDFZTJ44RKaDNvUCLLR4GpWgD/Q8T5LInUXpVlvXsVQ93d9nrCN
	 f6sQI9hd1vjr8fz5O3BYG8MlMkXlnhrCjSkWq8ID12OYEIxvE99ku2kEfMhr0HMkLJ
	 yCbbo9lIwJFM0sEzxuyc8IBN3LZ5bNKERudAtGgmz7hC4RFxsU+0/iRDSYCwa9UBU4
	 JReCB6hMDi7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C2E77197
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585255357.21279.6969599335295180764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f50dc777f7dfbbf86df2217cc84ef7047a4ce04088914d8bf533e77122c9ac0
Date: Thu, 02 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735852553
