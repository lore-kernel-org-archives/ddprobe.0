Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037242D739C
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773592494; cv=none; b=a1OaXQiHMuMpWHvoMHAb704SrSc87q9U5+PMGRSeIK1S3JNqlMkb30QnhyxxeFEXeZGenSmDuRK1CR8DZzR4wWuhBkFVwJBVdNoEsYiZy+trIt9IpTAYY6p/LoLQEv0LaJJbSmW1EpLblW7ut6PM5Y5vwsVftmhfGpdXTT5mzVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773592494; c=relaxed/simple;
	bh=euj/Y3+km3Wv+Vh5Sfb7kP2G0vQi4eoBKL/LWEERE+c=;
	h=To:Subject:From:Message-Id:Date; b=W7BoFwUPgMrTWHZ0STXv2ZdW2oZS9tPlG7hdVj4Vkp8r6dNzUxXFu0pIgljOpYWLiIKZK1lMRlDoGIu561KALoXZwW2pLJx+vnFqXradVUvcSgBIr6Sx5lXoGmzvqoLjaVLlbTWB/NFAozzKxsm2K32cDxCO33YwwyMEmQuxsFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjdUJjPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjdUJjPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B20C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773592493;
	bh=euj/Y3+km3Wv+Vh5Sfb7kP2G0vQi4eoBKL/LWEERE+c=;
	h=To:Subject:From:Date:From;
	b=RjdUJjPTLBYEm6Zfxu8xmCiDmHp5Y/AGdEq8y56p97PFJXZ1angfmEBleiVfCw6zd
	 N+Cq54Yw5DGEAbDpSxfVihCKxmSodlvk6pTTnnKlfm8PI/V5Gyi8kBmdMc6c7XpEKh
	 qn0sBeDDTTYxGg3xKOXU/X15m+jk5NhJyYh2K3G9GvnJNlyTSNm6b/H15E/xX3LuJX
	 3rGsWg50BA1PQ0lj9zbeMCrGOgrXjnOtmQlEx1QlfACdrpKcwms7LJRpLFeJymYLMs
	 8ohRqHIXLxz55xaJOW9EKAzwONTOyPXGiCmn6UoaRsY2LlxH1Y369iBY0HMClshyy7
	 YbvPhDKPeu7vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FFF3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359249357.13974.13292822206818630270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef904c5a907174b950566749e72ce2a896049fc24b97fa8ebe61df6d4e9f3a2
Date: Sun, 15 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773592493
