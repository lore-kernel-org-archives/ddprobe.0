Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D377B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 20:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EC0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 20:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678567565;
	bh=gGTyZsC/Z0kCODfe2bxMEfmjTugwx5Zu5xrnxPCGpV4=;
	h=To:Subject:From:Date:From;
	b=fx0ZGvJ0Gjc5ACiAAbk+KfsL7YQvdUNfFVECqOy9DugnaqVCg2/fdGYU+wqnaqrZF
	 dV4RkqFRDiATA6ZWPrO2C5kIbisTjoxwex+kNe0TvXUSQpcn8g31TlTzQTUf3ur2fU
	 UIxCjALb9ERDpCBsyhQ9mBOv0CVbQJwxNaXygRxfit/6Y10fMtr8GDYgc7+VhIZDvc
	 93NaHV5AZrGO5D/aQYYWHIiXVYLumijqbRB7LL2tuGF0CmBCnSkx5vhN7wspieTNkf
	 2wdBjHpEGOlMXpFGupQYXRUGY0dW2fWcCL0yBSOoHg58ckD99zmrLGQ4U23vCpNb5x
	 VoYsO65WZEpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DBFC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 20:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167856756573.32286.10644474445487926930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b5c6e8ddc8e2debc16f75864c39c0087bea9c4f99a98ca2bbff449e5dec6f6
Date: Sat, 11 Mar 2023 20:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678567565
