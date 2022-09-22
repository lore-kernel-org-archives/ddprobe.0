Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C418466E8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A76FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663860653;
	bh=CYOMp7vzJ7xpc7o+D65Hk/ZX/cQx0WSiIPf9BfbwG4c=;
	h=To:Subject:From:Date:From;
	b=LNdwN3ikAa30gmKtXHm46eMnQ8QVJ5Q/QbjbrN9XUL3luzAPRgWE003GEzWB06o8T
	 EM+Iwg43dKMdAr54CNVtChKOXwIVEl5wM5QXpPLJBR/96luRIp9s8Kd8cJyjmYvEuk
	 7rc+1b/QoCcPOjlwBRq5jEma8oWXSrQ3gksw/mJdGkS6uOLg+YqJaftqVfBOR8pb7A
	 vmHddlZwSMNUe3iN8U16bNAMO4PM+e10dnIIiZ7ue2ntrJTSvlBm6/p3yWgW868JJj
	 OGw3eSF269HDEc0UsCryVTt6TtBkzYGBVxr85THo352U70AiEQoSRcpNEOHhi/siUB
	 NcLpm7pvTu9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB3FC6FA86
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166386065331.5194.6606661289182872525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6575ec56609ce05004b9f1205ec85fdcfdd09cd95ff8c21d82f108b08bf15fb2
Date: Thu, 22 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663860653
