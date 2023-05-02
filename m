Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9A89472
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93A7C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683063425;
	bh=AH18S9xP5BMlCh9d+pPU8XEUwbfoLmKZQXxMhGHGyVE=;
	h=To:Subject:From:Date:From;
	b=kljKwA/5IaFznnNRycpj2NmBNU0pgQNtzKU0K3ify9omDiSpnoyhgq5hCEgi6NODe
	 fj31kZyXTq4xT0w2Pj0yQ7eAbwfgtRj+fmY4ocw4YmjKUMq6Xxk+pTETKJZp8Ko2lj
	 2TVSIW9WtGEEZxBB5bUS4aOgvz1awCMg6vVjIuGciVVwvGNaBhHznWnDqzvJA+PKz4
	 GT2yYdyJqfM9Il1yxPVh4BEJ29jJuSnHS3QwtytLsH3yVHU23mfbQlEHrRP5Hn9nWG
	 ZPVf63tZW2Eeqr5IDs1v+iBS8Fm7nXPsVvraDLcvy7PMb3BkymiqF0FIJHPjLlyIp/
	 fPMyCXDpb5fVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAA8C77B75
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168306342576.15564.2485261389270569936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc7abd718ba1669354b96290d99965bc331231fdac1549e762c8508c740f501
Date: Tue, 02 May 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683063425
