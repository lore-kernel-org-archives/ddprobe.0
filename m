Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7AA256E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776ECC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669546254;
	bh=LZWzvzfy0FejHE3q0KYu+rP9x9HBBm9mOhSAglG1R0k=;
	h=To:Subject:From:Date:From;
	b=KdnPmjmAkTjzznl6b7wsuMgLT5DKeSs+TxwFk317hVgQG2644gjGR44YlyY+edT3b
	 mphoXG8kdDFnYTWMglAo+tpcJkmBmuuzBuWzn5cYj2aQF+D/o9UQ+m8D//G1o06LKo
	 5oD1bND9URunl41LYNkRR8CqK0dgItF6CeMjMVFyKSBlbhc8qseQ2LyLRusWV/mMi8
	 450fxU74fhkZld7uuyPhMWtiv1Oqb3V/CwvlnqnkNvIXM7kGQXm7bLv9S8a2F8biqc
	 P/+vkhOhw+KUu5HdJar3ys3bH2+afrNTTwdtZJegFCjifaJ1hlBhZfwFYsX8xJawYF
	 jTZAj+R/9IfEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C586C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954625434.30116.10412162875651498989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6d764618e9adc5ea742414bcb4ca68f1bba659e86fe605d7bee89c88fd1845
Date: Sun, 27 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669546254
