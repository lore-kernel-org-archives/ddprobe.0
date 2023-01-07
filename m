Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006661C06
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FFBEC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673100687;
	bh=qGB+J0zyrcuBhz54GgnhoXhSCpGmOf9dtLm9u8Xyjl4=;
	h=To:Subject:From:Date:From;
	b=P7S4TzerytxEpPrYbyB6Zx/KlzyxZPSzTy3+7Pt+i7EjtTd3n0RsGT5NRYH/VQpi2
	 39skNabhQjCj1/JHOJsxTwY5xalcPu+w0A7R0gPJeVtJzHDDb+FN728UJ3snx5Q/Cp
	 kG3HBZDoYjCirXKnCh7t13AFUhMcTM1IlMSfoxBJGzf0eJKXz0k2HQF0ymzMVLUgDn
	 vLA/2k0kdTjdl5SsAuQ4WJC2TpwvoItL5IibEScShoI6SbkwnM9qUZzfBHYBqfwNsx
	 0JgBe9bGk+45etlPQwr/OpGCPjHk7oYbv7NeeVc4fLDRAkT+MykoRztNCAhhZ8OLGO
	 N+RQQlsus9zvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71508C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310068744.23167.18095591398631801207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdec2045ff56363db04b0200f900122929324f11c2398f8772af79fbd8aebcf
Date: Sat, 07 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673100687
