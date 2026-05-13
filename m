Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F53B6BE3
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778700634; cv=none; b=Er/AxRFMB4rgqOII6k3s/HE9jQFmZ8ZK9i502jSe9XFtrpFueB0TsmVRjK8D3rqo3JyzZOF2SXNHUHPOd3Sda6q0yv/Dgfd+dGiipyUSIFxGT/c49kddxZVRHipyUkaYtesu291SrKXiJTJ6T1mBX7XcRUZwSTnx82PPElzsGwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778700634; c=relaxed/simple;
	bh=B+swW6jW/p1fhXL3Xo6eMmDEPDpnfNONhPECenhK6t4=;
	h=To:Subject:From:Message-Id:Date; b=mwve3xAltVKAtLh8zL2W70R4Gj+83iWL/2ey9hyyNjYjmdp2hTYzLbT9wINvS89MCq62wpd0QatpvjzrdJ8H7CbGTXWbEUBZ6UuGWLS5Ebg/AsfcLzJRfCEh/k2JCpH8GboxOA8QU6wW2vdqlRBLlxAcWi8K+huT986e1FgS3Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPS4FgVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPS4FgVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB65CC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778700633;
	bh=B+swW6jW/p1fhXL3Xo6eMmDEPDpnfNONhPECenhK6t4=;
	h=To:Subject:From:Date:From;
	b=vPS4FgVilcwESchRJkGGVTvqZHYqbC1dkWyXxeXqvL7Iy9dJnKRRo9ayOHyIdE0uQ
	 UoACdYryMqjqqCy3EfuBag/I2IdLWzQKwt/HpOF5PHCUYaOsZETQuX55kz9xwbonNt
	 paM0vUUHliGqhaLncjJoA0IFBuezwRsAA97kz3Q2+uQzsZuG3ZXb4795pY6BqqWWOJ
	 D1EtXOLZwolfOyHq8zXtNB28dcpODE+S4MXqbKMVWCPpVlLhIz2DLJCYl9DteOPH9T
	 MpkgBYslXbuQVwzP8VfJiuBb1i/9u/RFvZl7P7mPFM2THev/lSfFXXdmMKhwP+Vm7R
	 YzGeAuC9vE0vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BACD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870063368.28191.4195672213579581721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819dbdd162820392e77d8131d5fae000fcb795908172658834b41022c7256035
Date: Wed, 13 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778700633
