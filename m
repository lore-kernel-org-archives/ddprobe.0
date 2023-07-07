Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C8A7F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0974AC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688690829;
	bh=+NtrHidlJzjVCNGEuUW/LquYNNvZWb+CI2xAkBuTolk=;
	h=To:Subject:From:Date:From;
	b=ENL4+G56xCGGiWtAL+iFVuLvmeuE7ALwieOsXh86nxBUwJ24ndpXHMD1jMdChcoDM
	 DuUQGFoMz0Nxah+L46ijnHvQ+Dy6tyTEUAPoW7gwDnTP5ZZ6C99gAGpXEdLyXKKBOh
	 KanKPeueqZvG8sAckDgNp4TeeV/xuTFDpsJsTNx9gmfBAUvQZBdPVZvuveCZrB3QmT
	 cAhMcxUI3h79PZVrPBQsyTh55K/gA/5GIUKqnhfQM6B+AmYy8SfFPPpCUU42ngvcRa
	 sWgsNXucEF7K3g+CZVDvBp0b9uWcyKCaX3w2CeBsEpXCcu7qxqMSMyMs4ZQGbfGDiT
	 oIbL10I7Jzbwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFB0BEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869082889.3269.14734864269519031850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ceec86e86daec7ab650a9ba876681ee6c020755543a28949421c23b4979ffd3
Date: Fri, 07 Jul 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688690828
