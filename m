Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331A37E
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adUQ121n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97AF2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699930696;
	bh=V3FPexhpj0AP2qSpX5z19BBxcIHdsFnQf0dulw5g7Bo=;
	h=To:Subject:From:Date:From;
	b=adUQ121n9lG2J3QlOZ48L06uRjyIHoBI5cSJVlwADcvKUbpcRHo7MOyzWxu7+3CPl
	 bgnQ/gY5fCrM1CVAMsLV7lIg448q7WsM7dSh40GVPEr+ZqPkyYxNj0rWO7w+6BcvDr
	 JbB1aVXKBRV++qhRqE+N3K9TK1juC35NzNAX5KBcjuxyOuvURjufSD7kRpJ8um/PmC
	 UW0gojvwoT7+VJKcjkDnyEIbpHS+V/baB2sil+R1eHzuu0HoSq52v8vs6MzJXoFadd
	 ngtzJwqSZoyGdUZ0MzjBy/iemcdiUAKDCdL8hKHHECySBa2KPxTN/Wa2KIs8S+91kg
	 xs3mxPzVmC5ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D777C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993069648.4282.13354290156362815020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6fef66cac2dcd37528ee60b944447f6c8fbbe1cd6466e2375aa92a291450c7
Date: Tue, 14 Nov 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699930696
