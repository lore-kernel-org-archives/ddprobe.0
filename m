Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50777C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B261C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663638653;
	bh=2dnWyErz+tQBKtqzZkdegAGqlR8TeGlDwnhOEcYZ51s=;
	h=To:Subject:From:Date:From;
	b=VNWBoucC9+Cr2x94PIT6/a4juVCFzWUs1l4g4xQiMU/wQHRcuo8nIOHELSs9m/UyZ
	 ceDhzVkbCfkd0as3B3vgTVNny3KXiYCMtrrwnDKTJzx4CVfPFtyNnO7NWYXVhVLxDS
	 NRL+HzBlF6dsmEaY0JyGUvcHan82oc+lmkgVEqX0trRaHTslVtm6zkV91VH7fkA8lL
	 gkdTfuf17s3z4kZAKTeDQIe1uVmed1iftObvNdLDB753YmeTFwgEie0sE6N8gnOdN6
	 vabhEx0g3AtOkuiZjpR0nCEW1Flq7IAfX4QW5X3U/QuvT77sIAAegKgBQA9EzU9lYe
	 t9t2U18BXKPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A2BC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363865332.986.13048194610396961085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a548b779a597a8d752cc55af3518d51092a04b1e98ce25b2a86e8f47f9560f
Date: Tue, 20 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663638653
