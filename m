Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926C20010F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722611754; cv=none; b=TeAVVcBaOd055TWswqV9hQzjQ6rk6gPuILRee6dGzWUFuuHN7eGil01cPh79suvaw5J8zdIxvwHuoVPXwIK4Vp4lZprq5qlXSxAM8pf5RhX+LRNbmwlztKt5Dbd8C1M/Pdm1P+B1KVT9JWugvBcGvDJ85uvd/65218XUu4rY2ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722611754; c=relaxed/simple;
	bh=wUIsF7YISdSbIQCuBA9feg20rZF1KjF2FhXqMLhW3Pw=;
	h=To:Subject:From:Message-Id:Date; b=XOecdYVdzFDdxQ4DGGv1EN8org4tYuNL63cjwNNj6131cbVrDwsB7lcONFCoFtLLDip9giCWJnGVb4WAhNoc3iwbmxmS0WDvdwDGcGan10d7XO3v5yDj+Z1BJpkt87UL0bdOvXoUhn1c7xQOs7gJj5LNv5OinRrvi/+cfWPJI04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMUNheIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMUNheIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45A3C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722611753;
	bh=wUIsF7YISdSbIQCuBA9feg20rZF1KjF2FhXqMLhW3Pw=;
	h=To:Subject:From:Date:From;
	b=BMUNheIVPe1g5u5PpMJZqJD/J8OmSGrMn0QVBjAZNFGCh+091HrR8zk3W7crVCVjd
	 eCo9cs2Cs9KHmRW3O3rPe+bHmW64geqOUJMHFlSvWxEMKQkhUIcxt8ySGqt/N39ar7
	 0vtd9TPrH853zV7T+DW3bxWmJ/jcajQS+MJLj+MxGVcuaWjUInqwRWEymgE9RkMzj6
	 BXDrHm0BSaxfeZJ/61FDVGsGE1ew9d/rpSsQxEdwj5Rbi9jdZ+maGgD9ri6gMiKmnN
	 BdmTJlNGlsXPqxcFhFBPg4sLU9aPp4uGdjBEj5rQcsDQN6PMLLAw1Y/JRfNTkMFJZu
	 MhuZgi1COXoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3EBC52D6F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261175363.6352.945347631548229309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb896a517479561b1712b782ad2e2c0d1cb6d159d6481557836eb106f887879
Date: Fri, 02 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722611753
