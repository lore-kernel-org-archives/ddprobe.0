Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0955E1E53F
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juiwGXKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838BAC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697827696;
	bh=2G019kzqKwD6cp7R/+vxHH9uSkCRlGey6VjL3TVPReM=;
	h=To:Subject:From:Date:From;
	b=juiwGXKnmZbG0bjugV6Zo69p0Wd8D/RFcsL+mw43G3IUf3PeIH5ScGINrvHNcVDqX
	 9qGk+KR5ZCzM1bodfMAK4Eoq+OqHy1c0N5vuDbiomxkGAn7nbr3mUCYSbrlr6FKuYB
	 DdWICanZ/5cvIiYKs5NZZHn7X+bg9jfda8vIB6FRv0s98IxMApR29vxYEGecSOa7O8
	 6lga6qHhWHEplxO/i/r5yIIJPqaPMVTzsnpkN0FvmTfjBKaMqW28d0ECLagRpGUEe3
	 ykknwsu55waCp9nVj72keqsmOehACtTG7ICdOMygrOPpQ56r3HgtRpRGrvW1BQe3D3
	 8jxsMxflQ4UCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61603C0032E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169782769639.32762.5301851022534860760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570c3308f6408a9a89f9709a302028b69052cac693ab4893a6fb2cae0db5095a
Date: Fri, 20 Oct 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697827696
