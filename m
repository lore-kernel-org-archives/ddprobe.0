Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FEA3D72
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D171C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661456452;
	bh=uVmozxZaUNdMYnJf+lAqKKkcFD3+uz/WGWqH0TRTA+k=;
	h=To:Subject:From:Date:From;
	b=ccOo5xYlXg1D9cbj1pDS4nrMwoyPDPfjGe+C8qmf22Ge0jGGiDAPhESLQVyYu0DXa
	 0Cz14N0RVHUbZGviPLsa33wFpDE5FWPl9XA1HbdkcMvY42S4L7RYw3E8IqSFi6sYo/
	 5WKArnZJ4S1s3mRmp5LFOUGyrGErjc6nc3kGH1eQOAJ3oA24ja2ZKxxoZ3W7ZPQGZv
	 63/RW9oPhohSXj7ztztD9ZOOGdBSPyJx5qbs8YfvpdEz3vLo2y9sEs9VI5cuFEDUnE
	 Zmd7gW61Uz1Hyoun1hUSf3Ji4pPIJqqp5hgXRAHUm6Qg9t34kqBLegikwCRLYZkP84
	 uS5mfcofTRcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535BAECAA27
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145645233.18159.3142636920866842367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b4024f648522093c1b4e2af82a7575ce7df5313c9409058113d420c896bcce
Date: Thu, 25 Aug 2022 19:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661456452
