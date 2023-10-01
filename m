Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD4815488
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 15:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C770BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 15:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696175168;
	bh=tmP6wAmmy0uQhW34kMZZ0gQLnXF3xbQEIHp9u8sLmC0=;
	h=To:Subject:From:Date:From;
	b=Rcwgn0vGNyusI8aTvPaDhuW8wxEX5WJ/mD3wc9UxhvAnkPAjrKrwBtqkS87jXeki7
	 /ctRuKJZzMB15P5K/I6n1q3tvbADRAsms+b7j+RHwEwwqbKnWBel4+AWIVQwed4uyS
	 HhswQQ94NKWSanlzfrZL7ijigfgccJrE35Zr3n1gY36KSkep8WSlepyZF+zvzX/XmB
	 EyI0VrEbmymimNi9n9e8i72JsDa/alaUU5uaqIOhzIhHB6gxiRaLveJbsZaXd2D94h
	 PQmVIFCL7eReC+HLT99VzOyiCCUeyR/rp13sfqzwk3oXBNyNO2t2SPJTlW+/mJUxr+
	 jEd41FtrVb4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE83E748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 15:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169617516869.4116.3528192695112643532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b7c47c54a95832e2c3dc1a44dcffc2cad617463c6348ca88771da36c7a7802
Date: Sun, 01 Oct 2023 15:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696175168
