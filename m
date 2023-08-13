Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B6A1FCC
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 11:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CC4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691927588;
	bh=D6vPMtW4ll0cZqhukQMbdXgGRuv+WTWSIvuZI0OHnw4=;
	h=To:Subject:From:Date:From;
	b=V/IQNiiErOwCUGrg7JgWgl8+VKYqTElnSkAD59Wb+H9+psG79PROOPQrUyAGdJoCX
	 FCNGPekEXFedp8RF3q1+0ZtZan2GFGnyTKA7rqd4kVOc/qvIJ2jQa4tdIinbSTKkpl
	 LxIrsikm/iCsIVvgXlOoYCk7M8KoRqb52fENzFKXcsdhxwpj/Hw6K6ORrLjr+75HCt
	 gN6LatkzzaDNNRh2l5cIFCzJXZKXSaXCvrsQ9l/OHxr0HiWfc0pa/c5aabLs5hr7Xk
	 rPoXsHYb2kPi0uMTG4Hpoja9MZLnPNdReNdfHnJCBOkwxrKYjTxQFCuFHeoA5M1uwd
	 KIEfexIZpNstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D61EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169192758866.4633.11594848623609447301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03717e8f5fd282fe8192f0cde737cba83667cb951ec7fe7740d0548b70c9f59
Date: Sun, 13 Aug 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691927588
