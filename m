Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A60F10EA
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC02C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669941654;
	bh=hkRZ4teNgXMn9x8iPoE/49NaOADuPDZpOcSJLC8Dg5g=;
	h=To:Subject:From:Date:From;
	b=dMmGkJw4Tubjt5sgX6insijNpPoBGPJxuPvMCu2QsrGgvW+Zo4z9Tb60f2I1SADX3
	 d26Hade546vDlfYCC3cRxDPxCFyCfPTkKhRUYaFzmwYQqeK9F7TH7CLNFRo7ZvhgXh
	 l0CPV4xAirWRlPtW8BIAEpghx5mfdcWdvS+zwdUvj98qEeTU2cJOelw7Uiom7RJBzU
	 ALc0iu+tgwZF/Er5P8yoEqkKU51p5qA8Y1bpEzQG/nTmEsvhvh7k+rEzZrwuqua/uV
	 RiBzJNX4CiYT6JGJhOS6R3mf+LSjdgknfvKJZnial1RoBCSquBYTjThGGJnlhd9eWn
	 4QHj3hX40h/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B96C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994165433.30747.12633949762985567568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee578d30481cf71277cb20baae9df2d19d4228e817faf08ac92927278b7bb656
Date: Fri, 02 Dec 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669941654
