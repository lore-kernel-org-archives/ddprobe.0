Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC9D1876
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 11:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E007BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 11:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676202845;
	bh=5MjvDmqGUoL+3NqYj8Jg3adlcEkqK2DRQ0orW1dWsFA=;
	h=To:Subject:From:Date:From;
	b=BUKIs+DSp7/rzoJkhNR10xW49JjxbIg5RJQw+PjU2U2ahPU/E8Cgw0wIHkoFVeMbP
	 UmxKZraBDbA1c/a0noIn40IgBsybS6daT7ECxlvRk57BWQhy5OZl7edwKo2vqm4Gzd
	 T8eI3+NRz1BqgS4gHlvXgZbUBgb/3Q15nlJAti6qkgrLCEPLHHkouUW28E1fnUUGwn
	 e13ZmSrd99vNkD53ig4VOfTkvFZsRiU67MO1n81smZkh6MXKDpcnCmLgB1MU4jGVew
	 U3nJOcY3hjhyMtrQrYwh2EmKzhsef3TLkrtFAKN92Y/Ho0B3013zsAqkStSpu0OC8P
	 bCgvhhv6Y9OAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF8AC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 11:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167620284574.6396.8614659022045769514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17ac5948c0ef1f94ed6c0143ae4a0bbc5b126bd8a9d718f1a0cffa4b8eb4e10
Date: Sun, 12 Feb 2023 11:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676202845
