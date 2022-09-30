Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70715A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7827CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664568053;
	bh=ivd2Tt/ERW0vvxpqO5qh7nRltQaYRxfQpM+0a/DZLT8=;
	h=To:Subject:From:Date:From;
	b=Rn440vpmiMvaU8Dejeqv2Rl8qfwQtg4qbpcq1gXhwDTqNseKHDjoWP2ZkgP4zxKeH
	 Ku7/8OLjYRy/yKG/Mbj0l+/vZQrqOk4oAEcdgWm+LGs0N66yHYnHtUwBEValHM/03c
	 F8FSpLIEB7LQL1MAneJ3vA/PaSnasMs9RGnOuo+UEsodSO/3b1+g+HIpwc/WT2gnVa
	 RYgj19IxIcpzOU2wsN+OKGF7hdk03k3OIDum4aKddXjr2/JbXWlznZV7Ad15wi5amK
	 AK90jip6dWvVx9JFsz8SLwETJhmr4cL+rGk9FnJ6XWP7j6x/dVGBsljk+EcGEuE3Yh
	 1eVhtmwIFXn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD13C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456805334.24992.17447842642067416348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcde526afaaa5f0f510000067507fde9e09e41e2dd7119f2c8ef5afa39039d7e
Date: Fri, 30 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664568053
