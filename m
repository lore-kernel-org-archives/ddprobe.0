Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEE436D
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B32BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664958653;
	bh=LtMQSUPwIsXYO1GY53aPvuVAXlTnLwh2YLaGcUwTMNo=;
	h=To:Subject:From:Date:From;
	b=aieK6S55tHH7UCOqFWfEBuO+RVhzOjFzAwb+tD5lxgo8ANCmOK1RgslX1VU6u2z/E
	 NdHU2LGm4or9HNgOAItqrDeiBXfwXXwvfDNM2G+pSxl8UXRDIqCWadH5EF/ll5EaE+
	 0RXt9CKKfVCJHivaJgRCqcA8XwKbdgB9yN8Cz9KrgnK1q3qx9uaddKeyg71/OI9nf7
	 TNJcnOFrHmu/multG0wf88hc7xfFSqJT+wRgplVQi0qADpPUn4OWjN3Z3AeX16dgrs
	 SMAEAOR1SR9xJk78bLol1wnaO4hJsE+6gbkQdvJJw7K+9Cskpesw//RTjr4+lCfXB5
	 nKvQ27WX1rnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CB6C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495865332.3921.2417120371919464258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa6f22a757e66b4b698043258d0f4bbc1275d5ac0d5dd09aef5aeadd7110c79
Date: Wed, 05 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664958653
