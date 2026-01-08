Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DED9429839
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767868434; cv=none; b=qq0WYiJYSgPepq12fOx4HDceWF6o61PXFfHPeEjTrWHcfSdgLw6+/1S3O2ur1y6f/hRV7EQwgrV/5R/cXMDpCPRajxkFtJdKml5XKdna5dzOx8iDj5DZwimRhkGPRkRTlr4ekN3eTivqJfmLd8eQcxpEVOn++RegrdsQyHTHxlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767868434; c=relaxed/simple;
	bh=AZ/BAlPMCkjPiCb0B8EGakS7dgjRRqhDI8xvF7v2Oyw=;
	h=To:Subject:From:Message-Id:Date; b=smppRKITJekoDJfhpnMzTW8NZC5fEJeO1CvfbHh4b6w2KmmwMb3aMkXG2PK8Mtyoq33rbho8cCOIQOIr380y5CGe41b4aCM5qt3K7C+AWZwnElMb09xsQCjRWvIRb+2+tNv2/HRACicoGfjXIuv9rzGsHGXGD15UCIUPl47nM7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYzfF9Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYzfF9Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2E1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767868433;
	bh=AZ/BAlPMCkjPiCb0B8EGakS7dgjRRqhDI8xvF7v2Oyw=;
	h=To:Subject:From:Date:From;
	b=GYzfF9UqyDACXz1bARlMWYG27ZylFoKGLZ50PYWpKp4RDpjo6JionEFHxaak7PCoj
	 VwYC37W6gdf9lELkborPJf+eEEWES0ko58NCJHpxfqhNcVtbm1WTh0npp8oVS4P4tg
	 d8wRzHsXF/ZqsU4SK+8PMfS0vCh9hJ4V6QXrbSPhFGEETBqyHZYksQI936kbp80QW4
	 t9i66/r8gDAs/Dri8cv+t4mJI/Q7VBoz0BIc/uQDXAnoSZxOuvKEPyE+WAgzGJVir8
	 NfY2tfW9AwYr6nV9mZxtQa/zErKcRXhYe0lIVHuDgG8mQHaKef+8dgDZSxcYpq0Mff
	 0IZqwmsb7nzPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC59D0D17B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786843357.20538.14298793924459685752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516e957a07a2af0ea5e3bda61d423bce95090b932fb418e975153e1bf9805526
Date: Thu, 08 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767868433
