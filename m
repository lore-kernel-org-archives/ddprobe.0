Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5F736D9FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787464834; cv=none; b=GorXcWcI4YQUTckbIgi/2StMocyVaH3/1V1PzKQsAjLl7uMYSVRRzwY3Qkd8x181faSMTfGBZEF65UtnTaJCB+JHyRDchmDXzvwLl2Va9XF0PjVlzMR2iU6B1/kA9CUBKYjdsFAS8Ez2bn6cmjB5FPQX0z2kyNRPIJpWuvOxFDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787464834; c=relaxed/simple;
	bh=u43BSL8dyBTjQPIN8/iy3I7N4rlxoA0U/WAjbeP+Hi8=;
	h=To:Subject:From:Message-Id:Date; b=C14B1iK5kgvvzZS7aUH4qe+WyILHYdXxnRvdNh8fex0OSFK875j5zaE+k+SXDNFDaxckevgeOC57RtVaQ3/hW4g5BFZ94FVOxV2YG2KJAXPhcNWkYHYnkGcD2wwg0fEbY4C+j4r25wOBzsthXW3/XKWaJ/uOqW5CVQUWCG3FL0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFdKB9zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFdKB9zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3AAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787464833;
	bh=u43BSL8dyBTjQPIN8/iy3I7N4rlxoA0U/WAjbeP+Hi8=;
	h=To:Subject:From:Date:From;
	b=nFdKB9zHK9akjT7WC4Tc1dxinyrACCN4zl/AImY9jbhtB5059Xwy4B1FCXpgghyYc
	 /FbsJBQUD4Dwjt/ol1NYy7ZzCup+utPno8a+OEF5E9d67InvJU3tN6eAbG/G/8Upro
	 n/ejqZftGTRwFss/j/Jf65ts3rPH+NLrAfuKdyoPwPWEr0G/MykxdmFbCQt9ciWo41
	 h90PoW1CF+TsvbjPhhzTQquyeWqXLQiNBr7cjdo/lX4nDleN2We5C4zL3PkLWCeIwv
	 QZ7vR8tRzH+OQtan851oLugKr1+ZGCePBXNTQa+d8myEgzNonPSJZDPdWfcz5PRzPo
	 yCoz9v/z5e44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB192C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746483369.11611.13085894237321781171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff9e40536b2d4244a83f5b97b000f0d473d911d80a46373539954fd49b2aeb2
Date: Sun, 23 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787464833
