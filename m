Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7E48497
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 19:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3467C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 19:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676920746;
	bh=SRgRK/zEY8g2kceNSdzYN8hj/7V5YiIbMWaekRgv8bs=;
	h=To:Subject:From:Date:From;
	b=tv1hYQ1hkKDLvHDHrvaRU4olrmEFdNoZTlpzAR7LIa463+wAEaSy1GfXBFxRdQ8j2
	 PdKThdwztXrl5HRYGzT8HQ+gvkSmFbYRqcU0A+vsZ3pj630dkC4lEAFDNEFPW/ZQAh
	 9Adz9EAZpg1B+P7nB04AY6wHChZM6ajjCnUOP5/OfH35yygUg6rd/nsrC2cpuH4CFu
	 4JcQANFwOWDR1D3x13nHA4Wg4Gg73qYV738iQZqv17FZEnMZjJxTEr4GGSK9wY0aT6
	 4pBdUERm2jZxHze/+D4PerfFEL70KU9HHJwMgL9y0uoJgF9xRaT2y/igPv1w50tvYQ
	 WwhMf3ySaQsPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7334C6379F
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 19:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167692074583.11484.6252824685696112996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cda32884fbcce45d60073539f9c8bce3dacc2d50d9a2d86dacff4ee0cd3ce9
Date: Mon, 20 Feb 2023 19:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676920745
