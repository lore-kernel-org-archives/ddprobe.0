Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7677C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845DCC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667685654;
	bh=pa5umUvlaf18ZhKJ177DI8qRPOXoK/MohzRx3Rrl9vg=;
	h=To:Subject:From:Date:From;
	b=mL3OW5aAXpIh5YEvVEOneeKdlNmSvlIzI9f7aWmR7fVNr4w3E8Nwwpvb9sSv9G4M7
	 7hvNPYyDVfdDdCSY0EkyX18xGqNXZQq/k3nP6/QDzfr92V2P87z34OpQ6jtrfoH+gI
	 pAWZzxcXxIHFZ2zYj7WcipDK79SlSnJpkIeq5m8kN/9oyaZ8hlkEA/ZvjzOGXlkNGN
	 zpo0sajAK3IzQdhOUqWt2HKNUjFeic/ddAVdT1efD6IW5aTtdUeia791goFTe1lBNi
	 CHpvvTd/ue9Wb/F00Oq+VYyRfTTLAKf6wpzftdSA4niBgkvsjocKgrgVo5oY7hLdJ2
	 4gItcXl5v4F7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FAFC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166768565437.8013.14232700684080506299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2aae0c062441d6357a56bee123b4d9cacaf503f709fde8a8996a4a90d8d36b
Date: Sat, 05 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667685654
