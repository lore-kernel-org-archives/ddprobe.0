Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D27B2CA6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727237754; cv=none; b=KoD/0jZ6tRjSUvZVEa2YurlQGm7+QWhAwiie/tG+cnxsyiKaNPibnTaii9E6z4wgGfCS6AqFSWnjX44AF4NcYmwGMT1JELxwsGaMCZmHujCGX5dNvr/SeDWb96lo+6rA+pIHa7kkFX/TMPdclYRYk+W1mZiSVFH+aJL0IbjaP/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727237754; c=relaxed/simple;
	bh=jpsEAbT27g5N5zl7u55/kqY9Yib8NqhoF9jYohXB6iE=;
	h=To:Subject:From:Message-Id:Date; b=dHHSRiXRZt6GpIs10z6OLZ7CNSNpb6Di9pz9gbgQqZh/0qT0AEyRf7f+RPq9IhoyG9enbiSKpJ34fb6h7q99PbUn2CU4lCgrzZvTpGFOCvCjWzAvDBiDjxLq7G18qg+23DifkucFLdZ1PeKiRs699o/FJlOSm0NwbQc7BUA1pWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxUulruA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxUulruA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A1C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727237753;
	bh=jpsEAbT27g5N5zl7u55/kqY9Yib8NqhoF9jYohXB6iE=;
	h=To:Subject:From:Date:From;
	b=MxUulruAmpDzP3SeyLGdpkJ8OSi3+GqwMoAc9gwj5A9CzQWQh/slcpdt1Z0vgeIhb
	 vGBKCKPGmzqp85306iOjOzwDS5eKpf+Tt4/lDPMHqldu+9SEGdUxMH33U7hWmHlLoK
	 L90pAPagowiw96pz+Zx5Ep0e1BOOzyyps7zGgW7Gbs6Re5gKwFFwJfqHP3B0JGPHSZ
	 GkNgv/iNz4yaPqPCWjAbABqEyQ7Lb6o9fF4yemKr5R+IRq7AFdXELg08dmRjR/4Qls
	 mTE8mNX390Pi6FoLoHZH5ogoUVPuKjYCJegrg5KhSbVvx27cTz66N+exAMaSfpaqxs
	 U5K1WT98uYxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF79CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723775359.7273.18303534582306667886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3242db735a60b3f7d07e69339d5722dcc442c3f4a48a87b579ec468ab3e5a5
Date: Wed, 25 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727237753
