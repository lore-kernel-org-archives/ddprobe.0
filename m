Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E046779C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B819C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672755087;
	bh=3zj3rmzF1j3O0Q3o2tjYZu145irdNJtd2rqZliHJjno=;
	h=To:Subject:From:Date:From;
	b=uLLFletC9JAYxV0u7QbKftHPJWSPesaD0dEnXdMwaa2FVbOGOlk6aB5jcLYA+rsDo
	 440BGCE2+f70BbUbqTZrlT3SgOpS31S9RCJiVURA4GfUK24RqFR449dqJZTA85hC5F
	 vqqJCPFbE41QzupEQ8llLjdhf9n/VCRGvMBXl1JoZEQw9ktxSxsPdCEmyOFXuRAzx1
	 tB+akrxpykDyizevWHv3m0uOK015fB6M7QEFYhinn3AcDySULzgJaHgDIDJg5yBont
	 9Pj5uGyN6ZT2Ml3e+o+r5CdxG3s2jGXPi08zS9owWjKt1k4/oO6yevMOhsRhRYegO0
	 ik55eIlYMBgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A46C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275508745.23844.12554814427858988008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90617a6ae5bcde2b37a2d937dce3fa588ca4a92ed8fb6a5d0d0839ae9961169
Date: Tue, 03 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672755087
