Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24ED28E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D30BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666182053;
	bh=A2GUFylUVX4BBm9L4iEeUKKm4ICxBPH537Gqp0kteH4=;
	h=To:Subject:From:Date:From;
	b=vApNlHs1k5cYMT4Th8sQjpB49bs2sapqgC6omGGVZ48qSRzJdxQh3Ms87uvqpUITb
	 PhigtqczW/CoX+Vng7rOjFXDqjlWzaH2EfK1/NYxwpkRn216oWebuaphp5blTS1ypo
	 zUlwMolgXQAG9V9pnLD1otEcLn+5Mi9ukstO2NrQRWkiTmtqd2lILWo7Rglhd84C2I
	 p4NsjERoc5U6USQhxeBtK7aONJxvUvs4BhTK5USNPjZ60JbGb7EKDU70ZWA/suEt3c
	 CkRaic+Vpc7DbKNXB4oP0n2D97QEUz86n+eu9tHbQ2mIocLGjAmc8dXNbsPsX1U0xD
	 U71mZ4f5xcJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55942C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618205334.3862.12476679716488685898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddde743cf479ad997a95d88990ab16e4f047c580c35b68da8be713833fa73021
Date: Wed, 19 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666182053
