Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F23126D7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782148594; cv=none; b=LuBuZpM4gefERS5Cawf1DL+iBr+q4gFspezRxPjUcL83q/D7Np8P9xGtcHvEAmQYpRJ3IPyl55KoFqnKTD41pqlY+EZKoN3X3z4ZDRLjyTzrCVGFRJzGOv83RvBD6ZdkhVtgQjQLXDgYgzC/EJEehpWM+dTye10igFeedshXmqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782148594; c=relaxed/simple;
	bh=mHQpQlJasXFxO0GHkro58OGXybEV0KnmNoCFfGc+TR8=;
	h=To:Subject:From:Message-Id:Date; b=DxaH0xPB/PpnfxJYr5Cw47DY+SfKbOnJCoV9NGFIDoFjzv2x5wxhSLGzgiqOcU7mLa/C4OQV4mZIQFNOXu4XbtK7OB3sx39i1hGUTd4d7TUn/UQZQr33lJNvn+1Hi7zqODfa8ZECx/jAWqhXS5CGi9cbhUZmAYChjfpDgzagdbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUoV9Y7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUoV9Y7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C2AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782148593;
	bh=mHQpQlJasXFxO0GHkro58OGXybEV0KnmNoCFfGc+TR8=;
	h=To:Subject:From:Date:From;
	b=fUoV9Y7i59vDTFQvkP/Ujb1ooAgrd4fGaDco9Oa7a65vy3CRV1L8IyLU0XUDRd29e
	 5QRDNhC6sFQVM7own4ph21Cj6vQ/AUxJdhZhTdvHE5U+ifxqZ736+ZkrIemsvFl+xF
	 0A+WUifV92PsjPXFYmVjRZIUTL5nnbZeWc3iNedS9LxX7U9RHdp1nvShcD3JReK3+W
	 xDOE+j3IcLzLQKq2O08FVWiRLbPBwen1TeVmYXGcFMQFT2jneGqSOVkWYn7/5y1xTD
	 uTgyicEHoZ1DXtXSXZCwfndJNPYJiV8YxJ4MX74+5yuqGdAVFXAgLNz94FlB7C0L9K
	 /6s/WJaAcpiAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB92BCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214859369.21260.11993961691009516238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e6ed8120126df59f2b70538389574a17555bdeb7957ee8682983da7898388f
Date: Mon, 22 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782148593
