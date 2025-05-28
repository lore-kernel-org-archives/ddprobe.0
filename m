Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9923536E
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748474994; cv=none; b=Tkiprg4ucCp6TysdZ83d5g9Wx8gbNJ6qsdl7tuiw3gEaPWe6n9sSNyYVDmqr6BNPBR6o4C65VQD/ujrLfwXEJTRinTRXL5Rm7Nwe/7/Vy+52Zdf74J0JlHtUybkLCWVvJmJ9yEQ3WEs/NfWznFxilZoAu2DQlixTyR6oqxQyb04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748474994; c=relaxed/simple;
	bh=VwtI0KbIyPCjqzFhz7TKVvnptOYpofTwd94nMeL2dvs=;
	h=To:Subject:From:Message-Id:Date; b=gLtGpWE4IJ0j7TX6DKwXf/SpEf3L/87/iRbD+Cxp1Uy0izC023Qg4rEHqgfNAdTxa8/z1UvbGwJSd0OVy4yYzIb+56GqexkhcCQ/1Hi3YKYc/IVM+rhLhUSTZUl/XxQw3SgagvtvDR3J/zSZYEBuBybCTnQXRp1hT5WM+oF9aPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkPfjj2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkPfjj2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E4C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748474993;
	bh=VwtI0KbIyPCjqzFhz7TKVvnptOYpofTwd94nMeL2dvs=;
	h=To:Subject:From:Date:From;
	b=JkPfjj2BmT8l+q6kAUbjmzvzPzVnXrSglGdbT7Z6kmmJEcLI6lUJsO4vYN369NLmq
	 7kos3ZkLppURFtWAmf4ns6qrqBWFqqv3/Vnqw8QtXw5fBw22Ijx4hC1fOCifBecaDM
	 01NrTHtJH/kPAaaSwVS/p02Ld4r94W9aAP+qVUbcmUJkRGy5gTyGmx9SgUVyrCUaf9
	 47GlY/CDnLZV1loRiGp4/TMuxHQm/+OwOEQCUg1+L57giZ1vyQMMWlXl5ytYOtXkAe
	 4ulEAJYSiBAYmKOOjUA34yNFcvlkCw28NnttrgLgQODY/dtVgsOrDEMR3joVGIamAW
	 sV5DC6MgkiLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10BC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847499357.21829.5541586860761227167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0779e9da15d838fea27e205d5d861ff57861f31774edb1bd565152a0784e93bf
Date: Wed, 28 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748474993
