Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A42D17D9
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56BAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675071185;
	bh=BVUPikSNRSIWCO8OsMaJSVAG2DqxDMB91XiN+9ML1sM=;
	h=To:Subject:From:Date:From;
	b=JbbP+TkzVEdG31ODrFDm5wxXgJwsb9pQDvyx3rCzv/8nYZ3GVkCJm0Dn7GGvvI43Y
	 mbxurydnWRC23zIauBTWakOQXtkSimK6k1JMb1eDfUIDIW+nZREp0SkzKYb2uAYoTV
	 CnMMmmznxjkv4QpxfMjCUDZevYJDcz6FFCG8+807ttxA4URL5uMmXnF11qQH5pZ+Lx
	 PTGxmmDBD/OegXu7PD8yTIDtarPvymi+oUfZhs7Fj95Wpk8JxqONGlxBxA/lRMFTZZ
	 WWOs2swJayhYrKZ2TdfZGLvbojTP8nhTlY5UqHk3BUAzBLeLPbUB23tdXBKpG8uBPe
	 ZcQS/Yx8wwQ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE267C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167507118576.18695.14975082865603316394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd72c33bd7ef973a1a4501fb84dfc79bc6a39bc0e3f1e4703c19215a69e664e
Date: Mon, 30 Jan 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675071185
