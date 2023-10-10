Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F7717E
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 00:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWjo2nUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75FEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 00:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696896428;
	bh=UCChmpuS6zt/W3nK0owrf7bRrv/HczkhR9MjZ7bqyP8=;
	h=To:Subject:From:Date:From;
	b=LWjo2nUUwwlRkLauZjnSgSB5c4xiIjqf9Dou7khJQ8wmrw5X+5s2vvN0P7LI7clJh
	 a5bCRDRESHdjrbpM1OmwbZwsDZY9MGxlapXWfHTp7rhKlEoXKYwxBZCOQal7mkRz63
	 5txxh5TDTQuXZY76IACbvmWwdcwUgTxx3MvmJ+gqDn8dzg1v6HuwR/9fCM077V4Y04
	 Ae2Debo6ksrIIy1o/5ekbkNk0PYX/X4z85vVWNMeJQuaxZ9qOF8HTfeQRE04keH8oL
	 mpef/Gcd20I/UCEikm9d645RPAXmbgeYyl12/OKH5Gho7fxsHSwA0hslmQtkD1Csb0
	 IUOHucRACpzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A00E95A97
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 00:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169689642867.10970.4245739679679252995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39005813125892896331cd0419d46bcf17de57c836a9633021bd6af83934e92e
Date: Tue, 10 Oct 2023 00:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696896428
