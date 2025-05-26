Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CBF25634
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748285994; cv=none; b=cyyz7LnnYHBE1XfRqClw/lG2M0VO3MbzUeglBuyNZSqAYkApU4sO88y2ahj1U6Kmsut6K9oUW6d0u95He8Apmtjp2eKR02xpkLUKga6Barsf7hX9BN+S+p4zjTYtRYzR7hDvZU5J30ZA5bRo14OF0ay4IVhf2B8Y1wD035gOzuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748285994; c=relaxed/simple;
	bh=azuNPG3kvNhoqQyp85iHZ+RtY3j9Dc5JLMNaRgY2Od0=;
	h=To:Subject:From:Message-Id:Date; b=WVyFubT1GhR+q/trtCilH2LGcHY5Wj6oxBe52A/UPLn9tbWPP1FCh5UfPqfTnEqyN/xVPJOQuCiQI7iPx5bnEzME3AsoAvuML16iQvamZzpkXyoI/8ooBi+XUhYxhi4bMI52TcTa/OaN5FAwgBtAKRCNpYFt3EahK9fxA0f2C+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFLyk5iY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFLyk5iY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A131DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748285993;
	bh=azuNPG3kvNhoqQyp85iHZ+RtY3j9Dc5JLMNaRgY2Od0=;
	h=To:Subject:From:Date:From;
	b=OFLyk5iYJOdjYDOqRK6hyOPalqCfuOq0ulBxIBfUH/Qqm6deYITeuhVDOpcv7YyVY
	 tKjPCo+nvP8bSEheI/3kGRiVi48aD0EXg6Wf/DcxQvPpsibNgJxI66pFS8/5/KWGGy
	 ZRYvfTFPoEkCNyXO1aCBlstVD5GE9g278d4cihGRKYtIEji53sTgjtXhymRUq6ZtuB
	 WIwiQ9r3Qze1OT32vZ29sXK5jlw5VjESaoDcPSCm9ssS0dM02+9JN+4Drv78aGxBmw
	 2fLGZvOZsxvE6DfOhOdaMQqebi2bF3NQYcTVNVDqGDiB6vnsoo361tTWFPvFACPN2T
	 lyZ6su3k4m9Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF58C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828599357.22132.6215137747375691147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f6a3409826607cc2aec929ab86375c1e8c4eebb22be458a40abd23f34278e5
Date: Mon, 26 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748285993
