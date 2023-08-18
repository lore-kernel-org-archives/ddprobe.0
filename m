Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4818CA2C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692398048;
	bh=c78bx7lxMc0bzy1onollJ7TXKdAWL6ScSzWlJUhHIJ4=;
	h=To:Subject:From:Date:From;
	b=OGdat7o85J0IwVjVHS4/+ZtrGvZYbWtxT4hYnqPOqR9tX0Fc8u2z4IgxedUzZdJJv
	 t+uRGjmXAQV5EuGhQ+1YZ5Clqt3OfuY9pV1GkQnDrMaKK5gD3bgwUoMRqXpApiRUr3
	 CFo37b/2VatT9EEhfAm3d9K6EqKYg52p6+41yJjwV8Y7UL8Su9cs5yCFbn4BvIqq7H
	 lTxX6UygM4NatO/Jpyfad1LHqRjS7c35iauSTtsZ7yzYKxKNpQ909LquIp9s1hMk69
	 v0NzdTs20vaNkS/jAjZJ+G51yzEDPyaQquYzlssExeYTAFvv3QKGQy8sBWRzDdntr6
	 dlvAIcu+r8iyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44D3EE4998
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239804872.3235.17133829159873842979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79bb210aa79c867226f8333230e0e6281227b91ec9b23da873604075516d1ff
Date: Fri, 18 Aug 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692398048
