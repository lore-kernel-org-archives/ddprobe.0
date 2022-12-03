Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B4F2F44
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700DEC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670080254;
	bh=iQfTbGBU6q3W8farRcMiB0TGtwDWJLEDppy5KwTNTBA=;
	h=To:Subject:From:Date:From;
	b=P7DaJAriaMvl0Ud+ioLHB9fWuGS+RgoGaW6SFG/4jvwovYBML6HafRfhYF9j37t2T
	 Zh/x4fzZ+KeK1NdkZB5LlMXpfOqc/etK63x9+lboiYjih/nCLlsnRTe4BRW7E1egR3
	 fEyNMjLIDLcLO8uNyNfiy2VMjKIXqjTogvAHvdzFpWzWwe8DW7XIsDwt48fWHZ4GEX
	 79zJ7WcEdIbnOUyrqNY+yBwHu/1gPnmB0W9P3MJ+IhHJ5fAGDZvJiU51ze2c6D2W1p
	 OMTqh0VkouM93RgloL4qxxMbXcp//Wr5UAL5ngbZdZu3C4wyfmmAcBs6sucWhMab+T
	 fFWCVcf8BMMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560A1C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008025434.24753.15259071145341713907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec98478adc64da332ae8c49b56f67d68094f8970ab6ab3470cc741067cda576
Date: Sat, 03 Dec 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670080254
