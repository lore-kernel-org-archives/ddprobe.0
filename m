Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563E779FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA97DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688830628;
	bh=c2+6WAd+fm5fJiXzWGMLuaNPgbR6QuTBgwC3F69gB/I=;
	h=To:Subject:From:Date:From;
	b=ehDWNRbph59CpBzWzPwGPt3cxSKCnF91KFaQEMeKaPlNhbGAIdd2Y8WBaAL300qKz
	 u4Cmu6pHwIigGiBVt0y/OOZUm7qf8iNCGo1GDxyVv+Kr5wpFmAZVVGkYHVXUd7JUHQ
	 bZbJYDuHJyCeg1zvMbvE2XSt2V9EFnzQVIRSzvDlltiQDqt1oDlWpXf9STcHXHkiDS
	 Wrripcl9KlULFAuXyD0Avg+jlunkwVglkjtTdQ2+f4/hb5aM2OCfLTnaZlLGWvutYF
	 DWyk4O48nlMw+t7PynY5jU1BazsJgAMWfebe7k8ueYeWi+fGVCUSLsfgW5WzJ/hUt9
	 tBZvywVEz0NhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F3AEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883062867.8622.6401547914009874937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc35f904c58b0782c4000f39d78bcb63a77296c389790ca5e4a9c074ebbdb6ca
Date: Sat, 08 Jul 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688830628
