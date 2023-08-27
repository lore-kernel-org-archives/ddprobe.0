Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73CB713FF1
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1E0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693174448;
	bh=TKMS/YJGFVD9dDnagDDEfRzAiPxV+8d5MmX0AWMVjQc=;
	h=To:Subject:From:Date:From;
	b=ML9t8Ej9H8pDtS+rXvmqJitN1l9UaB7TF2uusnvNNu5+pW/PY2xUSbqW0H+y6Y96Y
	 vqzodrqP5qKLGkLSZdi134Bylz+rqGbnp/7hgRNAIAg9T/ziDGRhaBDbUC8DfeQZO1
	 Kz2d1yHF9pzsn6lqH4zo00SRKfXLXecR3qnW6gVDSDzti8UUetxuhBj+fwKJsSrDtU
	 SI0VTTb8GM74HFLo1yPYLV6TC++fr68Po2XqbSNATOoQaXRyLGfIOXd/e3J4QKz0Wg
	 TnMakIsOTbVhriN/G5Z4uIpRkWjnJI3zPuUKCehR7PQ1kLHD2zpjU+QDPZDf9shH1g
	 rbJ4X02D+Sn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8BC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317444869.31425.13708653196743495989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee26fcf85e6205160d074aafe87ae8db2c6fd48fc15e09b9f402f4aa72a00bb
Date: Sun, 27 Aug 2023 22:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693174448
