Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F03217E
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 169A5C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688289249;
	bh=Rd60kzoMXMtmTF/4f7C9hBRP2gnaPLi+RCtWRwJXw4g=;
	h=To:Subject:From:Date:From;
	b=ivirZ5+hVqOu6GIVzETen4LRmEDS6VUzOmvF/YEXALDDz/RyBy3YkYzFZgPtYm6PA
	 sTwh+vWgl8zrQLKhafVfnuD45PCIko2uAmH9vZvLItjx0keKd6emxpsY4KxQrlqtCu
	 UNla9abVi5Ni4HUiOtLFl0WVmZL5BE560gbMBtJfAKKj5EOJ6IkEijj5m4cAtQmZUF
	 BIcRl4uYCnSosyZdT1vbqvXtZodEV1rcxjVeArA2QJzTLRgqi6iihhUXLMX77z1EgC
	 Bfr2qPpNzJik9GLaqjgPqhBmkkJLzIfpLnV+GJp2X659jmhNDtqQw/v0tfxKWjHeMD
	 YweHXDV3pJzWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7699EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828924893.993.6980679095605242360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dafd5b23a78cd43324c5cd86922f9d285508bdbd3179995febecaffdf9130ca
Date: Sun, 02 Jul 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688289248
