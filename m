Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A31317AB5
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C928DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687290728;
	bh=JrwU1VBf79UVIkg9KgmdjComEz0PvrWoFWOduLRHX7o=;
	h=To:Subject:From:Date:From;
	b=Z/P3Lvtb60QDRd6mBZ0arKXmjuCXinV65OOo+2OuUzKCGE7YwOS+usMBRm+YN9yNb
	 75ChiycNfZ5ZkRhNzE324VaDcspBedaSWT20q1BnASzAqvbTU84XHBU6+C/pL3wwEx
	 9LdozA1COml/rxtZ4X0DoCr9nTCY0GIlJnQRH/WS9AS6MnayKHxc2ZaRPaQR2r7Dcm
	 +NPPZmH6kbKotBdqwjqsK5RG5zWLVulIKwP65WI7hrBRASt9zmSfDg4mt/4yfyjRE6
	 02ob/CNUmaEiMyYcjpBEXdCfb49qgFkGQgPtwjRyY8rA7t3fnl4LjkRQ3HZf2l+2sT
	 PYy2tL9R67gSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC531EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729072869.12110.2176167809305817786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03e17e34895bf6a93ac802c78f1fc38f2f8bc6fcf8805d388a982a009a026d5
Date: Tue, 20 Jun 2023 19:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687290728
