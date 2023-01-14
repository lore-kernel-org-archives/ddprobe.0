Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EC820F6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACECEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673691087;
	bh=mKyI83hpk4PyV/5+zzbQ9b24+pnHO0Bt2rK4t/PpiRg=;
	h=To:Subject:From:Date:From;
	b=YHB+EQJc62O65d/0LQ/yoKqku52y747Y5YfGiu9gqo5VlQbY4LYgjeUx6S/a9MTS7
	 iSUJy+Bx16fFAhHB3VrdmDFmXgxnQBqu5+QojUU7XRZPCkpf4VCMilwCABnszU2eWm
	 NGjy4CyLwWtHZ0xA7CCnQBhWoDr5jsGpMJpZ2VxTeI1R6uPytTLwZT9X6gZB3TU1FW
	 GhVKGZ4Ew2RV/xw7bC031SCjo39a/G/5/JnzTTdNDB9FEbZ50RyuU3qsOOlVNg2lm0
	 pbH9djPdP5zlVWD3c+6YZ3mJryqVd/sDKX1CiRPOnXkapAIrS9aELpz+oke6m5K2aj
	 mq4H3AkcYW3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AE56C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369108752.1160.5892205332942360715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd1f7e010c9a2a77b6c7122d8cf47d1b16e1fefa5a24e4218c44332937e16ed
Date: Sat, 14 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673691087
