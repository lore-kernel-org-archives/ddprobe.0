Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5867E
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD8dQASY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D97EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698109696;
	bh=j/ME3cdx8M/7EoP36ZMibZFlEhwNLkshd7b68aI3Pes=;
	h=To:Subject:From:Date:From;
	b=oD8dQASYRlBynynuPTJUpMUt5xdwuzZdXtUiTxNj5p5ouSaoJ6/6tfYBuIlbGSqnF
	 QieAF1IHevTfGtVfY2W44/AB79/sfHl5zVVK9zTuOk/pEw0XoGBYc1B+cWlzdTFqSs
	 gwE58SVykukl3WpvjaCBTd/ySH36EpNvIKtIsFIOC1xDAyDG/bomjYyHUpj0zqQtLm
	 cvdqx5YRHuZJYa3NZkJRLSPduiq447tTgWEdVrUZ3e3kFFVLoqWZeb+vMC+lzNT70M
	 5YCHpj2lfHFkNclMbBT9uCvpTQHXH6wRIQdzjnNhhP019vqtPty6/QrmEFH04kdQfI
	 c+3WsLUD6mkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B30BC25B67
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169810969643.10229.2168102971464790661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f50319e674050272312ea517b02aa4931a501ef45ae9a2022d83f9b851fcaec
Date: Tue, 24 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698109696
