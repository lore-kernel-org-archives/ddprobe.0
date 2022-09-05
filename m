Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE873239
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F17C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662405653;
	bh=6TJlZ9rbzPsjMaObRvnkKTEZ1ikPfAVOFnNT1OiN0/Y=;
	h=To:Subject:From:Date:From;
	b=IGttnwsasxd2mWFJEG2KRKYJmkvhOhcb7/bjjeJEWPi1hj4jSoP0PBB9IivO8+hKr
	 5zN/xDh9PDd00nuaM/7VZaRF+VHlUwri3948hdOrF7+hxSOiAsUora6EihZoqk5spF
	 GLIibmiNPe36ikj6b1ieXlTEepJFbgB1RYw/VRa4qG2rKr14onb0hh/zYhVSbwzMH2
	 Ohcr3EJQTzMyhCGquCfdXlKmpLRCtUZ7fqqDW9f0ncGBxkdZP/Ek7V4bJgMPPy5HJh
	 7+TFf7UhwCHYOUQvnRhxRHmrOzcab6s1WDkC5YHvvV8MbYIOkRa3XYVtzB9CLU+yOh
	 b9CsoPaahEZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F0CECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240565331.18540.11698058517718762123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d76e23acdd02d4636b3de9243fa5c194a4072fa2fae1c7d971e6c35d4b1cef
Date: Mon, 05 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662405653
