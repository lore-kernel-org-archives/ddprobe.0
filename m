Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175AB321445
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771322694; cv=none; b=baKY/37QWjmOf/VNOwMrshMeWb1ZFJ7ygfRUuqpopN6JnlerLReqdzB08kGigONWf5RQp+Q4iiNCZSzK3UCjL3pmj/RVIVKzUht6Z1ICQvQKGZc945g0MIs/Ty96HGJxIcH28J1jshcTgzfnB7N2IOM11j6fmpMdHSHERkbLLBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771322694; c=relaxed/simple;
	bh=z3G6C82tFl56Ekl5y+EnVFXRVyjpEp3ENdwhvSS1eVI=;
	h=To:Subject:From:Message-Id:Date; b=RfJAFzQJb9flvUs1iEPIPzTSvXU/iSHW2AxdOU2sZq7UR4Up5j0ZNMtdXSxMK0ZS+YukbCpkK7zb8KDRndAh8RlmR6HE6xF8AikZqpOmuHPHzvrA4GyvLNWXyB2cQKRzdKMY6dv8WjaqbcopTIisI0Lsmm+XUcUScX6dwBbSjoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfxjHABN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfxjHABN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3275C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771322693;
	bh=z3G6C82tFl56Ekl5y+EnVFXRVyjpEp3ENdwhvSS1eVI=;
	h=To:Subject:From:Date:From;
	b=FfxjHABNXGSYmUkJ6muvVCjXvuVzfs2HjkIc6l8P2LzZskepVMK4TGXXvv6b3P4Jc
	 0SlVj5AUluQyo25kllSPN9SbfGEDZNiK2HtMVQNUCejwpr6hkfFeEvwHuSc5WSXANS
	 b/kBNdayAmjZGy9Pgw6aKvi4/UK7lx32A2R+KIra5hijofEju1Ye4S9zZEx1EMsyjF
	 3dXZjqnN+BOKRq1kYLBTlSrUn2qyQG0hF74cQ2Pa5E/JWuodVFlYDoB90pDPz62VFA
	 x0Zv47a5kWZ1Fnc+pqGvIOkLuL2cwc2lQLhrP0kSgJf8yCWzRyNWplsiEX+aA+kNq4
	 R4S/aZz0R+Uog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D79E6815F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132269359.32535.12335076629075116461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f105f79420a7b9e3eeb8f9356a71d50a0f43ff9958d36bcc6d6278cd8eb166
Date: Tue, 17 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771322693
