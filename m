Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35B1AD4B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F9BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669746054;
	bh=H4J/P7sde5AbSUYUTfq2/DwaeZMLJvbTxkfVgPqnCfY=;
	h=To:Subject:From:Date:From;
	b=PyE+z4mFUjwLYhpUwT9ZU//SLAAVFtaywxiX858WRSpgVG0VhUtSUE/+SxCc5K8mt
	 LhaUS/BnY44K4NAiJTUrzk/vTx+lw6vb7r5KvcxCsykIGNgZgyEgat4wFDRawCNz2O
	 ckFLuH9Syln+i3IT/7sEHHm+tggFhymV3HI0askDmtW9PHXiTs2175haxefaaceWLY
	 BMT9awGJS4xnq8pVbhh1rEpkLpDytLtQfmYuYamAiLpUU2PL8FaDXMiUCT1S//KgN/
	 OyS6BE0WNyNcmL/qBgtnK9f+qA4vHQaquN9SmtF7tmu6DDW978SAAYbLTsS+TXikqA
	 kuRY38zs0XFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5909DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974605435.3863.8721911004567952314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c326f9a1b33449bdb06b1a7c1e375c8935f0eab692f94ea7c85b00ccfa5daa
Date: Tue, 29 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669746054
