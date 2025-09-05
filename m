Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD26C27935F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757051993; cv=none; b=fNg0DNfe9suLcByCQEKcd8mukkQbMqvWnb8YA9xBuBdBJ8xGhLNS2W1oxRfg9CsBDoHMKtNwUXM/y0afMTpXqEKqgVGPrvIbniZpmEOxZokvzEUh5M4kF04KhAEhIP3MtN1umfh2s0T9SF4VvxhaQZKqWeveG5Ra0Dg68uMIv4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757051993; c=relaxed/simple;
	bh=I+5SMKFdw07J2SJk2urYE38EAwXOH5JlBI4zwOB1chE=;
	h=To:Subject:From:Message-Id:Date; b=pmx8P4MfxJG3IQma1eWyf8Pir1/hNNr294jfheCRpzo7/TvVaRVc81XKFudIxsrIF9pm1rTo3RZTFw+yPVpZuebM/8erBCLbOAAEhNgDcJP0aTToayG7Fv2WwY/ggHREE1ZXnm1TtV2Dyb26fISbxVeLuR2DGe2cP9gIe5XhT6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0KJ3EfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0KJ3EfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C20C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757051993;
	bh=I+5SMKFdw07J2SJk2urYE38EAwXOH5JlBI4zwOB1chE=;
	h=To:Subject:From:Date:From;
	b=u0KJ3EfJzYevGff3Wm9GbSsWgpGZbfniNPnNxfuPPPACLDcfrUkDqa/+hXU0EPvqH
	 8Od4YEwjkooF57baLu92/yDtt2CndqHLvD/0JF1Yhb7YFXTITOBwTW95FXjNsRtiTa
	 Rm/uCv5/5vdfTMgs7oc40SlmzfllAW+FpeoRawb1Kh7Una1DBOAp14y3I8duSqPXG9
	 Gp6woRA9qcCk0cgdtKhmq9ORjWlSl8JWASQPV1TTUxuqlnLe7aS5ttFPW/D8L/PAiT
	 IdD5EwK3oGCZC+9KtuMF5FZIkvOaQ3omSzuZf5+mlIhUWxZ9tmsivsD7gdhPx/vkZY
	 Uzzf1zJlNap3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054FCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705199358.23480.13743280571372058614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4104bd2e00ed6711de7216de3c0ffed525c5501d2037350edc94867427fd0402
Date: Fri, 05 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757051993
