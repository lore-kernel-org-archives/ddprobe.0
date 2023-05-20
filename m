Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E93632
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1111DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684550886;
	bh=zSQSuyZ04JeZwNDWWSEOFkX4/PsWx3/Zm5YpPN5bL1E=;
	h=To:Subject:From:Date:From;
	b=N518hnqFPnhXYGaOuvXPAlIAQ2v3HsVNn4SdunjHNUiLasUAe6k0kYLA0RmMFC3F9
	 FhvAYOIwgGzW/n4nLQmgp5bEFQsEKm1gkfB7gf6Doo4KpJmyrwTkuwHuE0h+ENN933
	 gScczt0NbA+H4yPx3Dy94vrieM1FPwneE/1ehx7bhhzSzMzmWxtTmgNtiKuHs53vT1
	 Xd+DvL/DH9O27MFkhMciQqcXTrkQ1GLha/r8JW8A7EWAl3w7p1a9BH2Z0E0bY1yiZ/
	 CkBBM8yeDMtf9JUzRZFWZUxvTDJ0V9Ghfie0F9oN7baS0iPIClkoSlEDFSiEO/qe5R
	 hVKh9ieInVCjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB28C77B75
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168455088578.18111.3202572163719435764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28189fa87e46bcb42beb14d629ab8d77b8ffa163c8bd8d2cf723fdb6dba57718
Date: Sat, 20 May 2023 02:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684550885
