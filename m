Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355946FA6
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 04:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B41C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 04:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684814585;
	bh=hMeQagCJtknilAQOLK1Q1rSOtKvp8u6D6vk3UeFxsbo=;
	h=To:Subject:From:Date:From;
	b=BWgSYzGyUutayIsZ3UsDu8JpJHZBBoy/O7WQiVjx76WbGnkfbWEB5gMmabW+XxWGN
	 X91jvDfiXFYiMcloxILnAe3QUlV01SYt6BWEG4sWLj19wK1wgZktYUgNATKd0sOpeL
	 fWgNfaZlraRj2RNf9iU7k+Wc0tI4BXmGvKmMhe5fVVPI5KZ5Ze8CqSucDthfcfd/LT
	 Y3qS0yGqh+s0SoaI6Rcyyh+3hbEn2T/thr23tXCyE3H8KejCRlLlIASXm7zhCnT0cv
	 I6LoqaK7XxfNiZqcN3rT+IBZROKejQ6Cpqfq1fghD7RP/DtuRYjp3KyeFWC+U28CiP
	 VqxJZFQ2mHaeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98CEC77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 04:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168481458575.22384.1370136983939529848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590f2b37d40f41d8e4ef41d4a56a8e93d90d5e9dcf01cca5385b022355d54475
Date: Tue, 23 May 2023 04:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684814585
