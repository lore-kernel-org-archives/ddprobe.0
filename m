Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B7C31D750
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762514393; cv=none; b=pKoU81xkUKS8VI+4PQ3BFSpQoLJwbj9BLe73MkPecLk1MZwv0WkEFF7hHudphFYf5ZB8gz9eR1wpeTxTJ3Uq5Q7o3KNdVwVhLJvmdqGxl9OM5dsANydYAwMVQwMAMFTywet7B2E8ZHbcGvez3eLeHKIIv6OO2OSS64C7aTH23nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762514393; c=relaxed/simple;
	bh=s7sbigM73yFs5fu7jXAFduedj2VoRX6lQTJysahSIjg=;
	h=To:Subject:From:Message-Id:Date; b=h4ZF426dTKZmjcFozuASXqh6bauad4mdTxEZPNxGUQ9gF2dr39JIPKKcKQTrST3+8sX0QBBtXmrLfFqTqWgE44gBlUvgPwI4lc+lHQfZE5YPptRGWH74Nq/6PD8TvDQgzie4PcBtdxtWQolEm6beUw9/uG3/Zwtd5ia+iSTb8hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ifa3MT/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ifa3MT/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E933C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762514393;
	bh=s7sbigM73yFs5fu7jXAFduedj2VoRX6lQTJysahSIjg=;
	h=To:Subject:From:Date:From;
	b=Ifa3MT/xFBSYHKNbBCGHAyWsTllcTJcgpC1ItkjcSBGkyRAsNmPHxtb/S9UlHxDVH
	 y2E+GBFhCbEvPEVwYP5L/fbupWSZt1D3uMYd+NSpLALP28XZyPWf8XsLSAJTbEYANN
	 W6KsQNuJZpNMTHrcQq2nCn71q+pkp5QItA/PTGWruLWP2RxLwZBVYl5PU++SHVhIfq
	 Ccr969zOPDN9o9GB0tnaW8vyk5K2OLj0ghrTdhictN1CAp0ZFsJk6Rjn+riBfI+Juk
	 lHoQ0tqcCGnuakexAOMhcuF/r9XOzLnJ/gYGBsk5UfS1PBy+pjHnkfoF+O9HfDSDnn
	 f3t5fWK5b9pIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306CCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251439359.1520.18029367101859039917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ebedc63aa3ed480f00d079745816cb034b77b6bfc7116526592483e9b17101
Date: Fri, 07 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762514393
