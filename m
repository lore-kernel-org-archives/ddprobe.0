Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FC243DA5C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772732696; cv=none; b=t6abYJwGJr2fkxCzjd5z2YPWsmrpifNQv0iJjiyBxFrIbMSunxxvg72q4vCeev9pZEikkwEGn3riBt8J/gOrq+WrTn3+OSHjHQwo4NqKwwPJ6WM9FM3dLjJoXy17a2qDY0Kq1lezi+nIRz03pyZra7H8UekviP2dkiK4aeTKCyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772732696; c=relaxed/simple;
	bh=2IIc79H1DzwoV4lBrN7rQ1/YkKfJOWjHoNdDBnUGRP8=;
	h=To:Subject:From:Message-Id:Date; b=b+7Wg7uAlq16++8MQV3tsOKS23PfVLM98OJWq01Pdqz0C/FrE/rJgA3CzMc+vcFSVcCd+lVAFGgJFIpt8EhAakeKvIeRkQRuNbovr5bJTfGGkZicOlDloAv3SS5G05l3gzcDt7o83YTiQq/GOjW4Ks3vu/Y4b9qAk1yWOGSWndQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7Yjx/9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7Yjx/9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B449CC19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772732693;
	bh=2IIc79H1DzwoV4lBrN7rQ1/YkKfJOWjHoNdDBnUGRP8=;
	h=To:Subject:From:Date:From;
	b=n7Yjx/9ys3usFZfZvD/egnqgY38JnG7+LHAwLYam+2naZmZVtp9IWPuolWlcnp8k9
	 F7XMoFTfvJYemwmsN/U5cvNeABDyWSnF0WXwDUulERskz7go/x2KAMuFGDLasCh+yZ
	 ar5gc/NP0AR4vjvH5v98XyqEynXBqsaQxnErXYGMNoc8sZ4hdBy0mlLgZpR6IjS1le
	 BNRBWTNFlfvyGGYwricicDEIu8ydh1S5Y5egu5EyRYOMDtAXfzlBZU3Y9aNrDVXCsr
	 9P6vL0qo8Q/HLktQKyG8vTXL+1mXKcOemkADw2FVXO5yzy+u1vr34X+qqARp5a3BOS
	 wxMQrYWp91DdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFCCF47CA3
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273269363.19252.4719241658586837201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63959ce095e6914bc712da08a6ba65b4053a2ea7894a82032e5bb6498667240
Date: Thu, 05 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772732693
