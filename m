Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFBF5CBA
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 02:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0wRfr9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC12FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696820228;
	bh=aOeAEu67bP3XKZlcgKGLEx32oDrPNlGHs8KVU6moBTY=;
	h=To:Subject:From:Date:From;
	b=h0wRfr9eb0UtaXcgwHmvS11RdH5B52lln1oROz+cTcBG8nd3UivgnCTCxI08AcBuD
	 JLVxCt2Qz5maruesdVRlYXJC84QSzivzvuWdB5O+Csdi+Pm2Tvf33KzsmqZsIzjaiC
	 FmQmmIlxRfMt4+F36ExIJj6VDZGMqMGIaLF0HoijklRA+Y4kfBHnTHmYuqQbLWcKVB
	 AZCMCCUn28ELU7zegMk+zlIZciwrxUGvyxpEAh2wG/LleP2KqmpwASggj3HTObHn32
	 iwk8RFAs1Isew2cVlrY62j/c6OAg2zyIvChI4ad/5pPg7yiRGMjc8F95oOq78VsJn5
	 k68xeaB+JmIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B5FE95A8F
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169682022875.21644.15225738956055575197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89d62736fe153c6243a4e5c3123d90c314b8130577927695a6ec0a2b84d0f56
Date: Mon, 09 Oct 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696820228
