Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C3A17A2E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761686394; cv=none; b=hzp/u8LRkjaH0y5ARkMfT11X/hfQXcYNYxhkG10JaElDkZilcMvNDxVJV2dXG3fVl8GwKovnkjOyEb+coAgV66QP4yQHs6eZdYSbIgjCTufuS85rBrcXwD6TlXdfhO10LhU61ta50euiAD8Egcz4GUp5eWc1Bmc0F0pUH09k53Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761686394; c=relaxed/simple;
	bh=U5/mdiu8tf8LzpEtbDwP+AumiaGxf8uCfPiCdLPNPpY=;
	h=To:Subject:From:Message-Id:Date; b=qlRNg8NKCtOrhveb+m3wKvuFJ+fQwh/uGFaEL9o6lpQ0/WA5Et5zHk+bcdHW9AnRlIEACJZsvbDEX2ejt8bthH3JIxaAqzq0qD8vp/0nuuOueTYnv+GLjVojF/pNob3XNqGeIhM4Ah4+jOEfMRfRKP1/z39i7SrNGXqVbGqheuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lie1yGbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lie1yGbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0152C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761686393;
	bh=U5/mdiu8tf8LzpEtbDwP+AumiaGxf8uCfPiCdLPNPpY=;
	h=To:Subject:From:Date:From;
	b=Lie1yGbq9Rd31GjLOv2ZMcd7DTl3kpIuWUGmMlb3UU7E/sHnZ4b1F0H3pjwXUY7wM
	 rW0RiNQw8MiG3MwgUltwgpoIb5ds0wbEDSoVUe5KzbSAW2RuBRTynoEW8kzo5DDDs7
	 em/hTXTCb4xALXTFex/9QI5+5gQNzyDaEOBAjAfeitgeYBf+862CxxxRxg3pYoh/22
	 gb99dTD3ZmMWCKc7tZGTeCeq4145jEafr0ekRmieW4AyX6GZtBJhXL4y/gX7/FBaGK
	 52Lj1GWcLesB6U6kDjUahr0d6So2b5A6b6Lx0+XBNIvCYtLEor8URIE698LmbCJ3nM
	 V6om6CLhOiXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9084FCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168639358.16182.16881142042367546091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727ee40234f50431591cb6ae1d93ce58db619337f042b978f0a32b6737ae963e
Date: Tue, 28 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761686393
