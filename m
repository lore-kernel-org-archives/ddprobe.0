Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE6C632
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB54C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672131687;
	bh=RMI9PpML3Hbc3fMP3DGIOnZwaugeYk3+4PMP4IrGv30=;
	h=To:Subject:From:Date:From;
	b=gc57K7Gvpf3ZZ0zSTghCPO53Vlhukt6eG6Se2AUV4fZ+tcnGEJzO/H2T+ZpEF2xvX
	 gMbYhyPwNe9y11Jj8sR+zsMMbPWp0lEoCJpd9WFZ9BXqaJFLymoCtw4yt1tqnrn3xY
	 c+WTv+G3tYBBqIIqoRyp/RAtBJ747d2/pFvcgSoQORSo9SfYU+xwbbSJJoll+jVbFr
	 lJRDBjqtMWYlROr4hejgSsRW+wiARKu1OajuRxnbhHBwiJjjBLOKJWm/gWiY7lknnu
	 EgudLEfq1HZqMtsp4xTS10E/nj4HxtGybVywXncNITTJEl50iczYAt7kr08Y4A0rr9
	 w25zcRaUOB+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637A6C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167213168739.20306.3464327149915213223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cc6d7a865a6f03c583076efbe9f5af23cb5bcc2972015a5b57a830dee13bbf
Date: Tue, 27 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672131687
