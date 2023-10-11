Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726B76104
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZgK+ljy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD320C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696990628;
	bh=8GF4+9j9u64NEvCdCB2W8qDIFKhOMV0QALRKLHdBoFE=;
	h=To:Subject:From:Date:From;
	b=KZgK+ljyBsf6W84UBe12E5KQB5j0QVWQ9WnrhzptweL/SVhaZwBX+M5joRkjd0OP2
	 mqLwvM7vUY7iysUhZocCaexiLXOqkBADYZt6DNylXOGRX8fd6eqmr5EzLEfwkU3niJ
	 eRxmvkSvYOpxh6AWIs0bp+3z1rFABJMJ7rXr1OC8WidNGLjvHdgzqdElWZfK+DnM0D
	 oM09M/BpfnaMuy2xG51bg6/Hlx3DdzsdyX7B3gSEBm0UBdk/Myc39HeJ8FaiQI41l4
	 V0oUgrY2eBxzwA0Mnot2DhSjHJhr+t1qJ+4I9Q4faKXLzvHkYn6LdJ4JEWlU30gXbP
	 x6kyvZKjJTNJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE809CD98E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169699062876.28466.15215391521364274652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3f1318a194d686931435dd16acbe10e9c575b8d5439ba81c89df99575ea15a
Date: Wed, 11 Oct 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696990628
