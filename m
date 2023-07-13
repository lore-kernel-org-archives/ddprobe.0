Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681E57C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 02:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB91C433C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 02:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689214148;
	bh=rZ0532vhAhDI2yOYVdwooHv01mBVt2Zr42oaNByl/P4=;
	h=To:Subject:From:Date:From;
	b=V42nuc3EIITKKNRzunUOVZXkspARScIv6aCLF6+40ZD06BgTznakmwm4b5+wUWdFx
	 4F/0GnIz4pTNlFuVl7w6CxBi5MVbrfQduncmCfw7ZJgxUYKTUfF5olE4pfR2S3USMp
	 ZIqMSwswVlc5MWOSv6CfcFHUELXyLgLTX3U4qX9K6YIT9ZKaYWe1GGmTzlBqZJdZbE
	 FQOT9LRmVTMqaq0oaRkJf4pUtfb5ThDp3K9Dd8giFb5iSQqwV5cGT/WHhcvmbSnMkp
	 ZDa4e5QknSnks0E6pSDAdKehxMqcYayfWwR0V6/uYFmAnysDSSy7lmVfY8trDnD+cu
	 IS+QZyv7ivB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11C2C001B0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 02:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168921414871.6584.12632922761084788895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2149ce80dace2a5c1810815499cba855c0d05c153fb602ebe66904533a35b4
Date: Thu, 13 Jul 2023 02:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689214148
