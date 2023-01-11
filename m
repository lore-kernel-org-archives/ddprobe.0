Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11592F38
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92DC3C433F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673451687;
	bh=HPZGJjmCPqOCMMw5ni+0J24a2o1JNaNQCWhEQvf3Gms=;
	h=To:Subject:From:Date:From;
	b=akPM3+8+R1P7XLBmCiM/um8irSChWhAfnydtNzj5SjPnLLj0fo7M4aVARg8wi+SrJ
	 vNY2NlMuCgboeKZyCPWxZacIXCj7NkrBC8k2uPyrCfi30mAMNxFATOi6ta7UOLa5aZ
	 kV+gliU+J8c057xgw/KPHkvVNjS6NakQpgI9ennJEyen4iujDZrkJ8DxgmffRDNE+0
	 RyojMxUFJ8C87jAvqYLJ/8Lp2bDuXSdNiy5qzEp8JBE0J+39ecnmtK4Iuv3wSC4HhJ
	 4Tw8yA0OH+1afU5RX9Q6UxMlrKuNUkZr2WWh/K9FCLT/PsXU+OuGuxbdHN3ArDJHSb
	 xsdblVzYCdqJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738D9C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167345168746.22244.12508652109852378699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3771c8444663d4b99b7a9186f1befd7c89de85e57003a5c0cfd1b7e4943901c3
Date: Wed, 11 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673451687
