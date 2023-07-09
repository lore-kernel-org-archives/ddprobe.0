Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C49D7F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBB0C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688941028;
	bh=kQzlJCIck/xdLd503kZIX9krIE6uPsKT+sT7P7gLb6w=;
	h=To:Subject:From:Date:From;
	b=Xe9s518dAcaj77CVVbQKQx4NlQ0LpMfLSp+PsLeQc2In0FfZrejfehqJxEzSuLPoL
	 dIYQkzpY1ikwwqdtRK48vCuDsGndujzxfk25Y2ADppDekGfyJF7cLYTlnb3qezt0O+
	 GMvYW9pbMxFYCM0sjHJNaQrwXOAhCcUysR94S83swY6ZXRFl5e68wDcjEfsBDNcCyw
	 dccHTIjzJ3hc5GlK/1IAjBeGmNNo6UAG20RE/5noHXjZgRLPY2hMTb4+OPunB1wE8g
	 HAZnWqZetpj7pRUaSPh0ZeL1DHPYzgpUKio5a81K/3xtU+uPi0+iWx/NKe76OdSOPh
	 PYGotcQC8hAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5BCEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894102869.14291.14392295575628934581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1c5793afc68c90b41f169accee18a151a8e4f0218877f5662724d54ae01887
Date: Sun, 09 Jul 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688941028
