Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B511684A0
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724072754; cv=none; b=Vw/oySMl3GaHVqTVLPYUiqiDpuHi1gwPtcpsTjTRPOeEqzs6iToVD6x6+xp3EcfZEi9YqgHrD1s4YOfvGOpPL8+ExgIvUifVMk/lzOOfj5H11KXWEkir5ZXB/FfLXmN6J2hjUo+zjbGElTVHenmSbOBawBGMERVaShOAU4oPVBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724072754; c=relaxed/simple;
	bh=g0R7JvI+T17sHcpAMJ7mDIQlMcRFfa4vAOPOsJt6bN4=;
	h=To:Subject:From:Message-Id:Date; b=SdQZagCmXZdDQMRd3WI+4L1qAcn7//RCaahTd4oa43XMki2oRyMWLrkZncpXMF0GGX3jN+T5CxA2TTG7hpx33Nd9OPQ28PxfWrkDIL0iss2ig2/vuMECessW5oQftb+A0Pk47YxBmiZHctFijPDQnfXYWrBcz1fla561hEBq42k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBYqI1cA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBYqI1cA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06E3C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724072753;
	bh=g0R7JvI+T17sHcpAMJ7mDIQlMcRFfa4vAOPOsJt6bN4=;
	h=To:Subject:From:Date:From;
	b=tBYqI1cA/ncEdlQknRg2UKgj7BddmI4Ultu4XErK9yp5dnnCsMi60WLf1/GlW1wu+
	 KMsS/II2MUBt7rbPvkSY+7iy7UaL3b7A4h/kCS1MHAcimWKZFFmIHZOdrqoJoLSIPd
	 vS/1Wi2e7mG7r1MQzlXfC0QvtkfFuE3+ZGLXpVGTEcVYeV94MslP63dJOEXjgvfBBL
	 V80qe+VWhhr16w27KAtorlif9M2KnQTOevNNNNjC42JV1fDy3SS1/lJDG3k1rs8+lh
	 OwIKI6BakwbYKCkIwSPj4uZB5ZKfO6GC3/LEl+zKB2F5eHoi4UDWvygsP+oAdVlHxZ
	 EFoQIx1xLAEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D245C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172407275363.28899.626378638462848715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5033ca57c110579af028598bd6ea14be6dcabc427feaff768399bde9a68d0a
Date: Mon, 19 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724072753
