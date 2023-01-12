Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0A68F44
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87955C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673561487;
	bh=1Bk3cv5rBQMdkSBq64VSAXF2BM9BvQqHpxdvBtyevmA=;
	h=To:Subject:From:Date:From;
	b=HayLTvTCNcykJROmgDNtHij4rXvisW2oUNIKt9bs1qkGZfUpG7SJgo6oTJwriuheU
	 MQwXho8vy2/m+UAlvsII94J6+xBdXEZmXQ7tr3exsf+2v0mqa6/tg8oVFxwg0wOBdf
	 bl9f+l+cTRMNniS8QaQTYbx4kiaTkA2XqVLVCY8geGWFXhIP+/XSL4n11hpYeknoEG
	 pWjWhM25qwXEx4iPmyHj87vSec7UQ9PXMAhC4SgUS8JQG+V3szz2R/DV5dsIR50x6g
	 7H5tDXU0Wwwlq9Wh2xl+TX+HhVT8geGaXmTlo4d3UfxjRskRPg8UArzvevT9A4lRGQ
	 MSjjCH8ac37tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D634C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356148743.2256.17373217931251661027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ba248aae6d844478a65078879ac0e8a6be79b0c64305919761db43eb8af031
Date: Thu, 12 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673561487
