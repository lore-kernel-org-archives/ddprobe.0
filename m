Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DEC7B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D520C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664833253;
	bh=6yh83yKWNAy+YjEdo1UlCarT5w6H1eBzR1NrHEGiaOw=;
	h=To:Subject:From:Date:From;
	b=LemorfS2/zZst9V+n0IXeBWpN8x/MTrUtCMrZ7Gh46BigPIR5IqF3xMjXX0xTQvez
	 WPP3wDaTknf9OB2ZewGSGz9c/2BvhzKQJFLYl82nQ+H9pbF8hIrGXka9AlW3vMnRqb
	 /NSzafdg2MUM49zY382VqmlV/NFa0TBm3YcXpJD/rQ9AO0AZrpdF+uj0okUeLktRGH
	 vzlob8lpMtPtduKD4yvEztDfRLyUGzs3K51WY3rzx99phZCHJHFm0pcanqC2gn4pEs
	 kF7EvFcTmtQ2B48ZyL5gjNiAFWu+MWMrGC0JNphK9wJvTf9zwOSlCFItgp9DDKR0+I
	 xJaMmjrYU8B1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526CBC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483325333.6294.9642121036237836791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1747631878ad0948a10c99f676e723f14d3a45f32de512ca518db5b4af6e58
Date: Mon, 03 Oct 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664833253
