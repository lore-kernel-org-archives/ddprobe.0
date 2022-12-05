Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C3D6112
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DADBC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670254854;
	bh=Fxa5gNjIGAK8i7mlOZpIanSfJJllprQH8d+aj6Us8fk=;
	h=To:Subject:From:Date:From;
	b=jTDsuM3Q81FSLPhaTD2p+6Ly0gMKn+nF072QgHNHk9hEgWN7EsCcBDnoEVYmeQHqt
	 MyVkhts7JhSJE9qdHoEfF5cSNYqtg/GJ0axmb6qA/zQBHdtwHiAZsWEfARi7m/Wckl
	 iuRJXZY05ClSdaEg1Qcm2BuEtA83EVrhb//j67bmbMopjYtosHElIb1zYUbGDg/I0T
	 hDIdFOSmXnxsxPxxYAmcojx643AZOsuDgGBDA6DgEK3ZquCR4zSm5ecrQkVFdIAfgJ
	 gzYeICBFhXiK0u3Tna8/BfD+boMyUsUIgS3JRN6YUC71IHPbB4O2ZBIYz01DPz3l2s
	 1pJw2qFPXk+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8E8C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025485435.14375.10273700325683963271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7869405844a9a9d04cc753e6b63a309bad876c9b64d4328aeaa9e1db688d466
Date: Mon, 05 Dec 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670254854
