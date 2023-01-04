Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DB37C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8293EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672803687;
	bh=+ePtvjPy2nhajv6WJXpWUpbjQ1SPqL+qAu4YqFZGvNc=;
	h=To:Subject:From:Date:From;
	b=qAKAc6nRpuV9pVUlkb8xKAg26PUm9d7OywMixfmAAgWXNMjYU08SU07JLyo5kRfDk
	 774Bx2NyyfP8pWCiNQZ8KIV04NOcsqTK6Pkrog48etdU9huSoUSn4AIpLJEFQQavLh
	 FqBxA30YjAzDUBc+ANV/UNKb5dcup3KmCSI3rlYd87LfgbRLn6ogo0timBmyhaOV55
	 lRarwl11r1DGiU+/u0dKw3EoS6XbJtR0yWls17A9t9eIy/H4XrLZ3v7GtziTSxSxMp
	 otMR7vNJRNlvy9pzRxc26ZE+X/sQ11s9XZ7xmrQzPp2Yu7jGDVdAUaApdRn6wy7bW+
	 7HCJN59oUkSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4FAC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280368742.8918.277802979238763628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1be4710448b25d735db89623f1da763bee6ecb48b158bbea872c9c654fa7d31
Date: Wed, 04 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672803687
