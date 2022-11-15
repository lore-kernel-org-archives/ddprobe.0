Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE82924F29
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7992FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668534054;
	bh=ifhuqoi/kAuYqCy8kMpYSqcf0hXcAePdAPM+aGa4E5Y=;
	h=To:Subject:From:Date:From;
	b=K1i/DTbo+uq8XYQ8tHDiSZIDpTYh6KnS88PT+vth3TfyOoYm+6xRRMZaVdn0IIyRc
	 LDgyOnCIzSvjLvBHxuLjLsD0CQIjl/DCapZ9gKcMtuRid0l7HPdf6t81VU+7xp8T/y
	 iQT5zlEofjPhPnJ4JH7Ng5UoHMYDagkirhQ78BO1x8gV/uxo0tZAB+uc/jrY/DMTPf
	 lwdTi1Vq9cMYjoKbnOvsj1eYjU0C4kfJMqUalj+i5CqBQdxx5lKqIkkOS8HcK1/wDR
	 sBMbkhiaADpUKxKzz2S+VXAcZs/yAxi942DjR9h/elv7Qr3tA92rGPhaDqfnMAI4Mm
	 /vrS67pIIAbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5901DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853405435.11095.16728055840310913973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7c4de752ad804bb00aca89b5f8ffa57f1d4f0ca06c9fbb3f2dbf507e2ad54b
Date: Tue, 15 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668534054
