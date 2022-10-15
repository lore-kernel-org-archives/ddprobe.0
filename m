Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD648620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B74AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665798053;
	bh=OlCSbk7ze5pkC7EXFJifqmT1D6iJnke2wfcQN0IOxUo=;
	h=To:Subject:From:Date:From;
	b=j3CNnjW/1J+NIw6HcFE39w7iGlSDB6+DwKNr3C5IihJZ4dABw71BBgBl97yXWX+2J
	 tZQXWQObrAumeGq2vb4vrqVLGqtUjQi1k7a1VM/UUpGjMGrq7CoGnQkIlNBgjjvgwr
	 NdqYT11tKNejf1qgvblzu2JMg/l938alOCPkJx4j4xMPK2s2yJyfBPh9BtAGA654+0
	 /wUktq0R/cLjMAzbzt9GupNVx7m6F8G8FyWhjcqyo/hTkah0F3OUrgRDRs+z1WFr/u
	 1oI5QwLx55fUEhbh61735Wh1qRSg7s9l2JDIs0MPtrY7l1x0aLR1O1nkGFz1rY74a2
	 FtPgdf0sqPqlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A89C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579805334.12114.5673144190901411390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ac08aa78d345123cb7879e09855ef3e2b89f036073424a953d7802c13c33c9
Date: Sat, 15 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665798053
