Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D0A7F0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1161C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692150788;
	bh=3yHZ6irqMlj2fZJGnFkpf89qEIM+S7o1ACoJ+gw3gbI=;
	h=To:Subject:From:Date:From;
	b=KrRTPUcIpVqQ0FljdSIh05ld/FoTiVs1CQt6NeWqw1l3RpTFcXV3Vfky5nmOwLotd
	 /WilIhGLJW2dMMlcrm1avL9svEGXUPOiKNAn/MI+R5kSdehMaONQzZs6V87Q65hmbq
	 ZP4Q0HBLbsziQeBt62Cc9QCRDNT9TEnRIYUKzjbSQ4ivGCgTOrkvWvv1VPaqpRy3RA
	 mrt5aOVFuH+oDMjlRmlkIHSMTk7/7g6hzHNcaU16UTb9fx5hZ81qTO1dQX6XOMLNI+
	 4Irz56lTdNUK+KSpmL579553TvHy58s+0CGPEjtMJICU1SR5kgDgb6CgJDHV1gF4dT
	 bZCgMJfsEDDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B070DC001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169215078871.7748.4044209107833276707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786a87eaa0c34566a1625e319500b49512d042984d29597a4b548d2271f83073
Date: Wed, 16 Aug 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692150788
