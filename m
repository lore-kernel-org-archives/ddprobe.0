Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF074DC64
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 15:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA2FC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690902128;
	bh=RTXs8mwCBygvRgDni3XJ53bOXp0WyDzgUJK1zSJ5gMo=;
	h=To:Subject:From:Date:From;
	b=iHKi8jxOqlhcKtgYh6nU5bvexyxy//MDCOrWgAtYcEYN6D1FKJPoztnWDeh7u4tv6
	 ZtkCunw0k4qtLkrSTIDMWsof1DM5rvlcFkbDhHdv+i3EVhCCUFOd1ajqHmtiznRxif
	 4/kIxqQqU/tJpAa+N0f4rtphKN1X9ZVBOA4Er98jVNZ7SmZWRtykk0AlTsESxRbNAc
	 67lr14tVLnljQ/DfCDoyifcl2ZlYXDdyt28LIVTWenj+FZ/37qpnNhdFvk7M5Iz1zW
	 AgSIEiUVbm+pUo31i0oMMfLhagiY1AwYRb45zrYKSwWaPPRDyO361Zhas4tRIQ0IDp
	 SJ51V0MJQOYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C0C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 15:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169090212869.6860.18088343642496435616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecae29a1565f4948d94abfd49cd747e59c12c5ef82adf0493b1061b6fd10aca6
Date: Tue, 01 Aug 2023 15:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690902128
