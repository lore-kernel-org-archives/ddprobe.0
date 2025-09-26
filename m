Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B87823D7E6
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758852594; cv=none; b=C/0VWBqHPiWjDrbRWkcYhPWNpOq5QYLEqe5kp07ZITs0FvsQapiqejwhOwyceJxuvDWYewitWgHPYg7MLCm9BEmZJPIFpooeNZ5bexN+osJeoIoKbA6HU8RlB/GMdWIy4cQ1kga8BwpNC6hOaProghWsmB3Xd6BPVQa0F4GgQkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758852594; c=relaxed/simple;
	bh=Oq2R20CK2GeG+tDC7Ap06OAvWCIaNPRhLL5G/crLF1s=;
	h=To:Subject:From:Message-Id:Date; b=BVjG3KvA73/epEOSNZ0wiiSQ0T7WJ4m9DFk5hSu+szBzlb2BUBtoeXNoI8mzwA8qvUQ0YrC5gd7EDvftif7Ln2KQyn4GDEi6gALmey7fr0iO3S+8cbRxf7epILryoqhl1Llem4L17UwmKi9afK/18ao4rL6CabjbITM95EuUdrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBX6Vwo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBX6Vwo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4713C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758852593;
	bh=Oq2R20CK2GeG+tDC7Ap06OAvWCIaNPRhLL5G/crLF1s=;
	h=To:Subject:From:Date:From;
	b=iBX6Vwo8onrSsBRj+iPN3mGjOwOZP2U4/YhzOP/Ovc+2SZhKFYXSUc68i+7sk60yQ
	 rCzDb6iWd78INRvRC7gZT2XRRmkQdQd5jTQvXNxtIXXDIKHTCdAyeKvy8o48UMbcDv
	 nkhMeEgB2J2NGyDpfVvpBDxpbalkv9XgNg6mAHPcp3XbJPSPiCphe7cAi4Z8gJZNom
	 6cvFpePLtoyW+rtF5c3rL24X0O8qWBon2SxqdRPkUBuHHDwXr0n4pfPXi9pWyJDZvP
	 YZBVF5gWs5AU0GT6pQoA5Yt4zGm+q248jlX2x3zsoKhI1ZLZY1STiW9yxhmRcBhXFm
	 N1Or1qZ9H1HuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271ECAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885259358.13483.6153855722063730971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce175642b4ba2ab8e72154dd4774657ef11db358dafdd9a92c47186b43bda16
Date: Fri, 26 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758852593
