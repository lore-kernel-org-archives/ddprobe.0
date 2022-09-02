Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27261869
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E462C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662123053;
	bh=pP26xoGtm3xQRnaAwsl1wNX1vBpQ9I/6kPfHrR2bhtg=;
	h=To:Subject:From:Date:From;
	b=FZmuQ0mEDoWfNjAI4VojuEIQzju/i4Bd9MPdPwRQjx6+T11rOWTJ4+QfJd0UGv9/W
	 vxumDMbMPoctX3CAh22UZT8/G9UKPIfOrl2oZOJk7oIU6ScLwi3TpEWNQNqCgyHQZF
	 ZFlQXwjzgvIFh0zLEVjG90T6r7Cztl4nzzMybLpwUplZh3ZhtrBKux3aYacSA56bqo
	 /eX9HmffRgINdie0R84BgJekESEHwTfEsup1dnH/Rtu44svaDqmKfiDPgJoYA1bsDl
	 7KTIU3y2CFZZrG6+o7R7BbrlyaL42rcMmAxk+JZsnyt8CyhZD7TgmGq2mInKpGv75v
	 Zd0PZfJnW/UJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545ABECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166212305333.5815.12312476858938582842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8742871c7d5a04438ecf751839a37ff5f1d61fca78b5c70a09439ad0ab0658fd
Date: Fri, 02 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662123053
