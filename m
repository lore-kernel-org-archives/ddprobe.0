Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F67010977
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7470C43395
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688766428;
	bh=j4qO7SPfO0egjdUPkKcxoS3E2IAO+1hmh6LIFxBpcgk=;
	h=To:Subject:From:Date:From;
	b=i2v8EPqC/+ZBusBfNNV6vGJLiCpyomUe7ksituphDaVifWqH8BcWRmO6rlWffUAcE
	 6/pfp5jrEVVNG8oFzc4Bg18ao6+Lf3b7BfSd9zLM8ILo4cAIQiF+Uhi00KdGTy7wVS
	 lUVJFPytNYJ+zP+9yONjFJJXN5SaaWT3lMMYnE8HUgMysxTM6SQpXRxGjNxaJJpN9B
	 I/egPmbeSI21ILh+XA6xR6oyRxT+Dfma9hwMA6bz3VVXodjZu47Zth5VyGtCIGCPfE
	 cs3KAbHwcRne4MhpTJpRUEAj9o+oDTnkt9X7xBRZloltZi7MSEi8Bos+zVvzw4f61X
	 xZr0yqtbCN3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A8DC001DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876642872.28673.2998419673768995464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b8297eabd5695541e1a3e79f16a5804466db48794ce3e804d7578f51433be0
Date: Fri, 07 Jul 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688766428
