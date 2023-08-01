Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4568C4DC89
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5564C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690920128;
	bh=z+8XEkqgEWJoRChgOj0+dws9RkX6c/ZQrmSmO5/Mo/k=;
	h=To:Subject:From:Date:From;
	b=HZMM88Dp3DGOXLLgLoHiR6fO7hWnadAGkPDJ71l924ScEcqOF4F7rXM5L8FCqsQ8w
	 V/+51gr45QZMcyuMBZGYB9a6VXNGULqkTLyKqPavtEHcEEDc1rW35k+JxrS9opn9Y7
	 JZIfOtPShbshpPH2HP4Gj+yobTksIxG1UlCQFHBHIZ81168zGH1OcFTfdVoyfA749k
	 6LV2B1kKTGvlZ8JZNsd7hduq/yOGIfCHt+K1sRUP1XaRbco7rFf5bV8BxmUGStRFMo
	 dC6jKIMkPTrAUEbYQmZkSC5I3R7V4iPx56uSI0bisF04Ck3ReZh2MnQLyQKdbCaGc2
	 G4YW8z9YOeCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A776BC00528
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169092012867.28223.16603250289527968093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a8d62f16305a2ff52811d8b8f53c68f55b4cf47d7872a1a53043c83a9ed2a3
Date: Tue, 01 Aug 2023 20:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690920128
