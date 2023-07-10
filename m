Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4753823CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8309C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688968628;
	bh=q/XVDJW5k3+6kj3gPoon1BhCtGw336q1ObGZ0W2m4hg=;
	h=To:Subject:From:Date:From;
	b=npQUERxszUhQmn1HDqv7Y4zgM8/opcuOYkduMbmtDYXVqipqhFKZclJTB3IVHk7TQ
	 CnsV2ja5Td8cGivnKiFeeRgyQM61tMg8Q2YVjmDRzwRHjN4sySHLbXVnSyE1fYIG2G
	 nXtQduSxn6M2PWTQgJz1hHNEMDPqcPZU+H7IRf4G01gmb2tzrTc5Qtwlr+NTYs8k5i
	 EqNCyqIODzxW7KK4rxv1OUIknPODj4e8p0LWI3DXCEdPtScX+hg8+zHe/jf7cqszO9
	 pjH82TDrt7TE/a1soht3Px3HDoEBhJW/JlL30yj72R/Obnla/Pr+xNhQkH1W/aUuPe
	 H5Wy84bWHflZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCBBEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896862869.685.204608290575708130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61323382dbd70cb23295a8844731b284923b5481b330be5aa9e50860fba9aa93
Date: Mon, 10 Jul 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688968628
