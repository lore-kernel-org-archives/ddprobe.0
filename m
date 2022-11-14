Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B2E187C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAE5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668409854;
	bh=Vz1RU3BzhemRfEJOBnJVpXWqoot0go1X6oj+PCI7OI8=;
	h=To:Subject:From:Date:From;
	b=f11OjI3q7t6t6aol9mX1tvFSAfgZmxgW7u9MXRU4SiYmHExaXj3zsBg6Di/gm5CUs
	 yKQoxOKfIiQZaglmCokGbUEoeatNzy04GO/S2fpEKoYitWmhiEwh8JsgYhhE+xj8/A
	 2e5Q5H7pPSJhGUga4nUjAHdaUqp+7ZJD3IhG01U0ffLC1iYT1sqoveQc3IK4/9UTXX
	 gdINRKnmSEMm0gGqe0NEZLPnuyhihshdMAkBJULJdrEdqfK9xr76fK0NYsVG1/Wmn+
	 23Dipnvn2rRvA6lbfCVzgL2BJfDzg9FK/gsPn1v6Xd7MWYNZFsLGXFvvomGXNmMaa3
	 hnlTo9HMmffUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B46C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840985434.31901.2358498173409715196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207febf7164685ad6daf56d8a68f111724c0495751209ec7bd55699bfb9549e7
Date: Mon, 14 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668409854
