Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B813410F9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE4FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663656053;
	bh=//Piq187Gzz+eU8BRBQtMs3jTn7avHYGEi4hufXU9Aw=;
	h=To:Subject:From:Date:From;
	b=dVpGHMDr7QdcNFJfMvPbBRC1JE9Iq585cCtbS31+K0n1cdVK91amjlC5NzQJnZwVU
	 +3YrjE88pDAipt2qJGQpOGsT5uHg1ZGe7W4E2oTzA878zlv2imMbxOnOzRi6iYHdBX
	 Pe9TFoo+DEG4pNKQhbHj9DhbWE3wplpCo0PoW7Dy6FqiKH4LPEmDZelz15tLy+almT
	 +IhHLMqQXn4EnCb6oqHsP3lpro6t811jxRywUdh/F/VvZdTJzxWIbI2YibKNRCkBKi
	 2uHIqDbZ5gZxYW6Bip1wCJYRYpI4Pl1XBXtSAtQF83pAXLPGzozDlN9Izbm4RowL+e
	 ccwdroo699fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544AAECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365605333.17939.13965001344722356295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352bf7c83009d2f35cf308f36a3dd4a51451490000890d0b96ee7fea177a082d
Date: Tue, 20 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663656053
