Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A7520EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEFFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674217325;
	bh=oKrxeqpBDHEfiJfhvmRFlWHSbNIQYzkZiJDuy1R0YDA=;
	h=To:Subject:From:Date:From;
	b=b+4PeQtxOVAKMP2v891575I9TuU4n5M87m/HhhXd/1tm83oSSw2PPiq8ly5WeVMUz
	 lrz2V6m4NRL+91JbDGs00+8KXBH38mAOIbKPVBtiF/QBI+adPgWnI3mj9mYI8mpxZt
	 IusLAswwh6Wrkk0o+bYOYosvJ8Xf5c3q3czgkBdFr1gU0ksEygqtPkXLOiDrIga6lo
	 A65XDKcRFTsFQBBOjTfHrs1ivIpV2zEWN91C4UvoCk8czjY9rKIMVShJJW+VMlybId
	 07YnQIeDdlSo64Z+IDtfOjTBFp+6LWJjDnV0ZMkBTqAkfinX/AxSMYoD62sW5UUe18
	 LOM7AmFuxMy4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE678C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421732576.19942.5451404969018823000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619cb16f2ca9c7fe71443b19bb8971eaa869e8b0ad39776d4c1dfedf36bd79c3
Date: Fri, 20 Jan 2023 12:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674217325
