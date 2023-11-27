Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC821879
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSDIILT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DAF1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701065896;
	bh=uzSJ7wZxDXy1cZ9pRbbklEK95QtLSpv7341RxgLpoJA=;
	h=To:Subject:From:Date:From;
	b=aSDIILT9NlQHS+ticGsSUmeCfBY5h1N4nlQnu978np+sumH5AKufSrqgd+s/rfSZ0
	 K4EmsjYLd2D4Os4y5rjPvVqS7Mrv9gUUfiFs6bc/4snTusW/iyBAmRlOrtWpE+9225
	 lfdv9s8OWWqNS3IE6yyjxFPY1Kfgs+xesT2EBZcalEAeo91qyjxoTYdo4qRuhc054X
	 3mV+WJTiFS36LekqrWsASBjSr5JV3MOb0Zi6+SQZnnebXf39LLfmR4PaWgkdvoVwZx
	 ppsa1a7mo64t9gMetoYpEEqPTdUkwJ6JOCc4Ac3VtlldxhGCs4CdQDYB5o7JYAVp58
	 +N1PdSE/WpoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1F9C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170106589639.2468.14455501707507399779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4a1d9ad1d4047ce2236d1977bae55bbedaaca813fcaa8eeefba6c277801c3e
Date: Mon, 27 Nov 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701065896
