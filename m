Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBDD3BBE1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720911623; cv=none; b=SZW2LBL+xeLaRJR4J3mlHYbD8s7PBYuR6w6SYUvLu2qmS4GlIe6XywF9luE7HsHZMbJAZwmfUOTX+Xwd8butYNa3RMi7qhwZEx5KCH63P6Wff8BWulydfJxbxxi672aQvvS1UyVm1sdaTtOBjhSjyol6GraPkO6rq2iqpOVeQXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720911623; c=relaxed/simple;
	bh=0ccIN6o1Mcyzb/kjbBtFBQHGACIrBJz4tYerYgNUiU4=;
	h=To:Subject:From:Message-Id:Date; b=t/t6kVQprfedJygm4V/y0Mi+6mlUynj4ED7vQgGHwgcNQhVvw+RC/TEEdpbdenSsok7gW8rPcAuPdFUVtC04/7cd6S8/1u9aUy3EN1HnufwWP0FcW/ucs/QEZDpbwFUg0wx6CVqVcpQL8cKfoEbWQpFhf0LVr1R6BO48frRygIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngxlB/i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngxlB/i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB112C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720911622;
	bh=0ccIN6o1Mcyzb/kjbBtFBQHGACIrBJz4tYerYgNUiU4=;
	h=To:Subject:From:Date:From;
	b=ngxlB/i7LT9YgsEl3YXb4g/PokED3vPmjFAJ28t2z2zj3APAIA/aSqrxS1TgEoUrr
	 07SZnaG3miRomvbafXwC2lSx+2sZd2pfyuRzsniqFtx3lZ7nKHnMLbZuVlOimVru3Y
	 n1TugNceUVEuGzAMFXJJeiOIaj56/MHnL22a4ZEgVRwE1hSkCznRBz95xFrtVCLsMI
	 BNeUGiUyAUBxz4K0j0+Cj3q4SKQkfaIaWmx671wzeVviaLS0g2CmeS0a+1hStT9wMh
	 KzriGq3A5voXNKrttXZ+mAaLpxEhWLsr2Q8BFHIrEzoemEq7zJBwatkFRwHIRWVwVZ
	 WA9I12a9a0Dmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C378BC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091162277.23966.11262257785216904879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d6a84db95ee53f315928c7d205c6c8b3c38417cff0ab44b49108fefde3fdd2
Date: Sat, 13 Jul 2024 23:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720911622
