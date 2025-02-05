Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479082139C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738742754; cv=none; b=Pz5XeIHa0/m07j9j9l+HSzbyIvoGp4jyig0E5Bm5saWw69+9S5lDD7dLfbAD3uN9OjR+KFKng3jAX9L5kUBvVE85l/fYq7KQ9l2p2HepaG9YgWEI5DOBroS/UidPJ7B0OcpL4lZu1LU0I/9uKJaf+9G2riDkY53zBBD2/WbFqcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738742754; c=relaxed/simple;
	bh=QSqe0nRtjSpJhC8NPHNz/9iaSJi1j2mnAIyF/BPeAO0=;
	h=To:Subject:From:Message-Id:Date; b=Yw/YZRZaxl93Jrdkve55bHre1IacTVeBbYMUbUqV2eE/q+Oa50lYYhVIMy1cA0QR52BK35UFPLuxZzxfxZMosVWva976eF3JDdoqIOJhnBcjKccwe+1G1DqDrMdTWJSB5Z2ha5lYcix7IFLshtGJX+hySSiGUKs3v/H0jdvPq0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6YwT5Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6YwT5Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2195C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738742753;
	bh=QSqe0nRtjSpJhC8NPHNz/9iaSJi1j2mnAIyF/BPeAO0=;
	h=To:Subject:From:Date:From;
	b=K6YwT5VyvLRApQOAHPZnHgTVCihSn6aaUvbl2SLPNo6K13VZ7+H0hZgWYnckyzrQS
	 lGvztIT7hosmh2g/gvm/FQBwdITVmDTLCF2VKAg6hS4vp4d7uyjawAVD/E05kEC4tQ
	 P8S4OA+v3Jq00fS9WNIogcQWZMTRD4ZZuvb75ZoFgH4iqStYN+vVIWNUEbip04/c5T
	 ix6G1S3HJxxjwnMGCjn9b2D0+kmANY2RKv1FKkJAyF2opJgoVAJz+Y4vpgsZ33mIri
	 NDR0s3gUOdSzUEe0YqwIR2g3FAepER1bK9w0102zapTdLbdeafQm4ztse0OEZXD4c5
	 gB2OJeoUoo/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1DBC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874275363.3823.6816680829023187554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3eed29b08d3f22edf5293b2d9b846c16712028171a8061b381e09bc022f4f0
Date: Wed, 05 Feb 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738742753
