Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4515A23F403
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746816594; cv=none; b=rvGENe8GYwci1kGZ+9bsI1zx2qc49cj4x4NElCOjLp2sSaqATQ9HEqKEVtsMsLi6zt3Gfugb71UBseDfRsWQ6knCuR731URs9Eg82Sr2hkV2IK71IArTNTOblj986Nq8JDhJw6adEGVHP5aqJVFJxMwO3pB1dOhYp/nKU8WrRDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746816594; c=relaxed/simple;
	bh=BI3IYATeCTMvd+eNhKJiyXsLYvdduB7H6T5Ow5pW4M4=;
	h=To:Subject:From:Message-Id:Date; b=GDhsVNtLa8Bxio4ZWvejogKhkJ344BinLh5On+XR9zYBcI1GJTtFX4+WCiI1q7XpvkZbwo3H9yflmCDo8p61bfU11ItzFUCviX2Jj07DnsTMjha+bjP0fbMv08oEWBOQV5DgfPzVDcTbGJuRtcLEXebse1dl3jcV7mw7qn+ez84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4cXMPjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4cXMPjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F300C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746816593;
	bh=BI3IYATeCTMvd+eNhKJiyXsLYvdduB7H6T5Ow5pW4M4=;
	h=To:Subject:From:Date:From;
	b=h4cXMPjRVjzsn5oLc/Tgrwqym7x9SnU06E6dDe905n9Tk9uV2dp2TQ5knZP9TFtaR
	 GSe5xC5XosprOSrWrB9EE0wLk5WdxvZ+lnEu15GoSadCVSO9RaTODgxh5em216Hn4b
	 uoif4eIjEdKxcJBvp06LsSndfDoowOTtuvZTzlvOEoqLMVExJmQim9f4y7F45tWDFZ
	 afvJA+0Hba0bjXBGztBXB2bnqe1ApwL4Uu2RYwl6syl8DGUPzmQDNhg12Cc09r4j6S
	 Myzst7xYWRBDNGhO7/MiwLLD6WKk610taWlTa7PDJz6uPAJWuRU/CfrBDuF4tW7B0u
	 GfNtNQ5tNq0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB04C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681659358.16398.6040347740556157293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b842032bee27a89d2ddae95ffd3ae1375675a73ce0397ec1a0a05c109c213f
Date: Fri, 09 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746816593
