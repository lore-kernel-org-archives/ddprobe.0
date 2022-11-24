Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C825A1FC1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73192C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669269654;
	bh=z8QA/yX0rc30jwc27WMvohZPF+VW+dry5Kqkr1/Y9Iw=;
	h=To:Subject:From:Date:From;
	b=s/VQIZvtqjxtT5laR+NbOWofUpiDvhmFAs+WvIvtENTPdqnJH02is4bm8HHCDrIbU
	 hUOZuDwHXSEib7cphUnrtJrfGQdk/ohQQAv1c0TEtgR+j6n56IMuOCfPGUpNPHtf1d
	 uw1W/+74IDJdLm9m4JPqgMOIfApXA3/Bbpf3RY2SLrBLchwBYiznLU+en8Yz59ZkEH
	 1zZtejiqsLz7EPCzcgWWxs8AEjcJt5GZrcZaYPESkJx04j/mmNtnoPzH9S4LDoS2X9
	 BxMO0SbglenapWw1XhdKKjXq5ctwSVPuXY7pVIacgCAx69hW9Iz2QiZzM2/LUnSJ7/
	 1HIi7GZNzYwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58445C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926965435.18979.9753118762126576370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03679b4a8925095b5c41a538c6de05649715db283a48b78bcd6ff8a314d245d
Date: Thu, 24 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669269654
