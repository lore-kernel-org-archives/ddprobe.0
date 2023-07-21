Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D07A38
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BB7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689916928;
	bh=VmgnCtWRQvdHuxCYG7r3CpO+SHzD1QbLQfNja+o+adM=;
	h=To:Subject:From:Date:From;
	b=Jmz3RWQfsVZoGzSfSFlughHikqXMIE0b578g/NGlX+7zVZworZSDis2Y/sUCJIoge
	 QpxU/jfU03iXh/UW4pfGaodSSWkN9Jc32brcSGZ2JeutCKFBJ6P6Qxi05P8+sF1HvP
	 l+mHLfgzPOLl4oRiVC6yyBdCADNH/3V/oYDGjFbUZsPB9qQvrv5iOZ18tLNdTT26x1
	 R9C3gXLC/ETGufZLSt1TZPBPlQHLhrVH8+Hjd6BlUYpFQeuO+7rXiwi0F5NfgAzQf9
	 4uXVh79THN+MzIXbOdiwGb22x71uDZA14xg2+ZVMpxyqBuq0UVOesCzcpp3cdbPLVC
	 OSzM9szPjXgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A709EEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168991692867.3051.8593441517395806591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7a57160444780c6d90de40e65eadbc8e903c9f47d54616aa165cbf88428bf4
Date: Fri, 21 Jul 2023 05:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689916928
