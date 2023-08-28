Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6279B10F4
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 20:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21C4C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693255448;
	bh=Xdpmx3evWLR/y4fhOcM8hRKeZuCJUzTrWHT7o6cpXzg=;
	h=To:Subject:From:Date:From;
	b=lGK+lbGVOZptf86Dbus7b47uLw3/2GwbKbqBhksiyBrjt4TfOTC/hxvoqn2ocDlm3
	 Le117LVRVUdpL/EBwXPu6iO3K/czFx1TbQVrFGeNV9Owk8IJBAEzmVqJDYsPlqHS1h
	 ApePOd8YFDA6yHW9hirEUUvKviC8kzYrboPJGvhRCfSFjadat0ZI8qxCW5zZ+luXZB
	 IBunIHv9FWgABFH1ugIWAjbKt0iwx/5vTwSnRimy2/5yRT1FYMADiILTX6fxPrVmTF
	 qyyGW1jmWKmvRYXxcSIUOIvFDcaoP8m6oe6DKRNBO2Tzr0P20kMBi4PEY8aSn1u810
	 fjxag4fQ6meOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B047DC71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 20:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169325544869.26930.13158301901918113085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7eac11ea561ec373ddfde0b79faa78c1ff0997dbf593efc0a85fd73d33e952c
Date: Mon, 28 Aug 2023 20:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693255448
