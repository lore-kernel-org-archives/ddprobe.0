Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C608D17CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC89C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671791487;
	bh=bazB6T0UTSMUTwzgIkI7ICZxsby3JP5/2uCZpxSuTvA=;
	h=To:Subject:From:Date:From;
	b=OnbqiVT3z9zTKTeQ56QwLQc4SFFpKgJoTnPQ+6M2Dytgqp2kZmFF+RpGFeua1tD2F
	 S6dlwesPkud/O+zj7lavlNDB1eBi1l7Ru9XVmcfjLT71BOq4GMzqcHOQ32y7XAI5rP
	 EUUqtZ78vOnljkT3eGF1KW9GkdB+k9ZcsGxTgRUGc6/WuX0Q8AHjely4MW0JJCGRUF
	 qJAGyRu3zh7yab6xAe5enVNQ1/zJO/+yPSiURwpQkImY3jyDJb2vh+JGtv2AMtMNl1
	 fdaSufQCSCnZ3Qz6xNoenWCgRyN2/RoNq0vhS2iVqwWRBd4ueU9dLLrQNkPCNXF8L0
	 A743ElrP3of1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62ED3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179148739.3429.9946706201722279483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3309ed2d9bf1a792cd4fcb55c7353b11675a3521bf40eb52d5a4ac1f9556edc6
Date: Fri, 23 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671791487
