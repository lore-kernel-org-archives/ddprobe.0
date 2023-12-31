Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2671CD29F
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjBD6LQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9086AC433B8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704036496;
	bh=+ERuO/0Wep3bD9JFS6vSvttug9U21GS3XgJesM5TSDk=;
	h=To:Subject:From:Date:From;
	b=qjBD6LQOrYk/HnpfXn7gFhQ17hk346TzGqpuKP64lnQPcNBPnx9jWnC4gvN7UDP8o
	 OCTQFc5Rv1SrBQqFe5wQktPFuRTnO8FRpU4rZv36uTMJVcA0//e9YzheLn4mBPRYfZ
	 f51C+aXkklndrEu44rSI5wLyBpCiGWfruUMvOEi7g/fKuliRR24+ROud4T02ROMcGY
	 QggUAfi8cthPxM6hyKao/BFHGZXUYr+oCaahhr4o/1kJiOg3y15WWLZkOmuahvoZnS
	 tvNxU0svf08ozMGCDNPOpdBp/i9VEQKparv9hKN1ZVSFpxhdA1s8rIFNmKgMawht6o
	 eddxtuqqTS7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A69C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170403649640.12647.8404010274971037652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abd7f794197a2ee7e0477c7d08ca6a384e101690080c051e4f0a0df0453d0b7
Date: Sun, 31 Dec 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704036496
