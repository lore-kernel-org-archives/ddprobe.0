Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1809417C6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeYxvVLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFADC43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704851896;
	bh=H6nMJ1Ul8juhN+OM+G8HRygQd9PhNoi+EbqX4vuevWE=;
	h=To:Subject:From:Date:From;
	b=jeYxvVLyAUYHg6aqw8//cF5uZFqMRnHYNAsZ4SoxSYUskvdhO8X9JHj0rfK/FU5iZ
	 JqBVBbVS3VEGnmIAccoZMMwu1Edx4aoadLoLapBCQqPe55uPytszzrm1BWfdir3bYO
	 Mz4+Ja1H2aLrIK/1WfsfJEa19iMb8LPCTgCsGFvoNeNoqlVOd/klaTaJcpRQ13iiFy
	 GUnaLRQ1AYHWfyX0nrwLXAJy8dU1MEx77nXIuaho9pWf8bKY6jQuTfmh4sLhFX89yb
	 JmkYfjEcT4O28jrOf7CUY/p0TB07t4DpNe7xkUEJ87bL2XsWWAtRxBmXMeyg8GbO1h
	 v0PV4ptkNJoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF8AC4706C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170485189638.5966.4200955157836141551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c859bb9dd63154b78990f3ae067252d993bd685b5af21a09271e1b95b607ac4
Date: Wed, 10 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704851896
