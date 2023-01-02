Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57617C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B42EC433F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672652487;
	bh=QJf8kRpWRsSsxhvjnMN5v+2OqoOFFYltq9srQTj7tpo=;
	h=To:Subject:From:Date:From;
	b=YTFr5PpGDjzqju+6Ig+ajhCAuv7FPt8v0ugXx4zg74SSU0z7D4GXL0+8RxiPJwNdo
	 MJtGakdayq8eU+DhcF6yrGu3Zm9Ba3EBzmPhnpALKNfLEgwcHKiYvHNBD2B4eSvrpA
	 2xeE9a9v4Zo0gzJOz5meckYhf3FlmqDy2qs09B0q4a0Kt6vJ20p0dx8rRJ6VZJoYWh
	 9qJzCgqquQcbrTXIAvhILMyv2fvDrnWFamqZNPZr57GOVB3PkuZwyZNM2rrK9NQNoT
	 kDl/OKor6UL3ODGJKk8PwIjhJalYYIN9kZRY3+3WPM8i/ZVGTqPFhkVy0+tq/Wl7Zq
	 TKtj/Rbs8CmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D72C46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265248738.2999.14554163783427599006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2657a3b5f9cdabe5fe2087ffda1522a01877d0f5ca709c9ce00e444267d9b953
Date: Mon, 02 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672652487
