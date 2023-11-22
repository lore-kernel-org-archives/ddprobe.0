Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA1F24B21
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9z35FP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FBDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700672296;
	bh=HeRFgGJhgKjs8gWKfRJrEsmTXNIEJQnul6FC2IC63u8=;
	h=To:Subject:From:Date:From;
	b=f9z35FP+3ppSE/Fo3JS3yl0rtIg3Ut5Xgli/BBfPcKLl8pTCBeYfexB7ArBAvqyZa
	 2ECjI0dDrjCUtrVLNXD/ozZbzW5iIkSNGuSqo7bsMBUCmw71bhgFVPbTRKlUISsoM6
	 sq0lUWxIFTYhyqKKyFePFZHCY6Tb40fWZAgiCynNpW1zpaC7lxbg6j7ur1tnBg+Zed
	 IM10VgUPoFlLi5trA/Tn+fdJkMXSJ6w4AnEnLjwkFdqWzc05SOcekiR0MhAvQ3vXcA
	 OHzf41LvrxEFp77O+qkHpABPKbUUBe7m8HUyM+G/NDvnlwX6rwk0/m58ySkc7TiCpU
	 A6dBFwZ+U6L4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D09CC61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170067229637.27233.12246735306737432659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706e6c89fb72c10322fa8251a0f5b2787bb568b1b27e3fd3d37eb678ccfc532b
Date: Wed, 22 Nov 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700672296
