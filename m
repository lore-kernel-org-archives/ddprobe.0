Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06247FD
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660480853;
	h=To:Subject:From:Message-Id:Date;
	bh=Xghm253T3hGjHBRYTNnlQDR2q4qhb2ztcwv1nZmg5uI=;
	b=Wo3Yl2XvfYegRY9ynQ1w7MR45iNCnlhwkpmFpeHtBviD38TXH2xH69JxUazZ0eYp
	rUw3P27Ya0lcXT+kBeZq6veUqMU/L0riH1UlNu596csojjZLrySopFUVHxnTUDx2IjY
	FuOxQlFadshCdxCH7+RSScD3fz3dOSB/0Nk/QvJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660480853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xghm253T3hGjHBRYTNnlQDR2q4qhb2ztcwv1nZmg5uI=;
	b=We36Cqt1tI/FzFnPnqMemYZ/yPMrJUKtXBubL8JsXq1JuZoH73qMsk7QFHlbhcBr
	8sUJT9GpNnm4zfH/Jr/9sdXdpNXJOD21hHurxDMULv63XqoBAdSHjBijBkvIG/g2Pgb
	95NmK9trjZ+BalQ7Nq7rXlak0eAjKrIXALF38mlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c5f128b-2c30c829-0d84-4fc1-9a81-c90d0affdc86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 860c2e98543d5aba118f828fe78dda90f6207443988bf16b0655aa247b2aa4dc
Date: Sun, 14 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660480852
