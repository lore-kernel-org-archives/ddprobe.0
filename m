Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F9425178C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749413394; cv=none; b=HFvXKon/h2UlLAd4QT7nTig3f6TLMKy/l4wMhG8fTRvGc83ID6BfCVG4xl+MuDhq46nDG0hPkotXMOionYW/1COC37whiIdWIJwh8fzG+1Rsr8fmTsYFM7hX3kjotXQ5bbs9PE6Eq6jrhsruiN/pC2L9H5R0nR40hdXPwDj8H8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749413394; c=relaxed/simple;
	bh=ctDW+IZaOxhJihrnspF71pEhKKEdMJe93luKMGC/PPo=;
	h=To:Subject:From:Message-Id:Date; b=qlV0F0WNsHMTGs8aPOoCqsf5uKZ32COQQrECQsda0d3Ego7AozSwOAFCQ32bj57Ve2yvHS86xCO54R+9mN+HDnCAPtl/0dTnGoOzyVN1BhlfzJDYAMS5A/90NLUIS6kwVB2MhyJ1GrO8sOFmNr5UuFjJddY7VKlm0zXnbnuqGiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMy+EqfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMy+EqfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8BC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749413393;
	bh=ctDW+IZaOxhJihrnspF71pEhKKEdMJe93luKMGC/PPo=;
	h=To:Subject:From:Date:From;
	b=NMy+EqfNx4njaXEk/ONbPu6bIAGbgk6ez5XNtmwZVD1+sp+IfGdy0gKIBh87Xfn0G
	 gp6oGADZiKGe71jglh7VPvorR92g5Qiedd7YELBd55RBxxZg1Tps/hgIcCUCLypgdP
	 WpuDmmNNz78JJYR6B6EkqVTaJY6mvl6Cv2yYf0Ton4FYMXz4J+JE6utbvPW5sf15mk
	 5si2yOw+F/2Fy2C0FqlHRLOvOVnfGbsKbGLjksZBuplWqxf5OXr9xW1jqdL5LIeboq
	 hWk4NC+TlIA4tGYsAXLUCk/uCWg3xECh2hUuZHzMVzAki/KEEtMbhbeqfKIFbch6HQ
	 J5b8w/+Kx0yUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E37FC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941339357.14868.1839954242851722237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e074d66b25847718fa57f25c2b81c8317a05ad0e959ba141cddbf48e59491f
Date: Sun, 08 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749413393
