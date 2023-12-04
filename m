Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D2C28DD7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wnqzw5DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853BFC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701702496;
	bh=5HvvVYFZHO4S+FkwJJ1j9OEp9MV2ksPe0WKMangHhEY=;
	h=To:Subject:From:Date:From;
	b=Wnqzw5DZdxg/QlVL19/Z6oNBrEr0clONMxqnDZiLsfFLnHYuuZkDUzktWZ4e1olX1
	 XXPa2my5C+zEraetVvx5NLkU91aRXLW1f66yGcfTXFY9nIpZyy522BWxQVHWcu9GHy
	 8Im9/pdM2xy6Cqx27Ywg23Xi4Db82IvExta/uJUaHNTQwJpuDIvFOUpKiOhLEekbNh
	 ivjFCQiaRjqJfvblTM7dpkoPNWkFo92YhdgyDffcUQyBMwzE4FBYF1pvuh5iAzqpZq
	 Wy4Jl7QjRZhgQqUaB6wQ+UVd/1fBIK1VN7IliWMpoX/EpIqhaZvDs7ilbIZe0PWGVt
	 zBTJODffsTzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADBEC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170170249642.25837.1890444259413342732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572b02dd38397ea86a54ae0c4437cc04abff249f3f9cc9e863bffe76798fc56e
Date: Mon, 04 Dec 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701702496
