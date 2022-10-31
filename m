Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96E420F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFA4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667216454;
	bh=7faBqeT/GxMB1s0RLsOHGfRWI5OwrYmBq7587npbZFs=;
	h=To:Subject:From:Date:From;
	b=B4vI3Eqn2xGhsuEzwLAikvezzMYx/mzzru+CuEFd4Z/H/1Kp9alcP4bUpVERmwhJz
	 lQBUiC2WscTdMb7aIu9X//AOeK9rf+rbfrzbmha0ll2xAIYWu5XEQnKKycFqRU/ghR
	 /GPuTPq1TJyQBDKat2ZMkNO/6694ocA+P5ilr+HmVzTZAxIQFv8+MXYk3i4SqGcMK0
	 emAI+h1UyWKutopawn6UH5NEIjyrmE8W/W3vvYJEzw9RJBoUN5OBsyibz8ieov63CR
	 /izuHlmH2HzgRaoBPwAvZ4b4PruQPSTnZF4Fv/sveaBXCJ6Afn8FYj8Bs1oX/fyomC
	 1i9vX8Rxex7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568A3FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721645434.18436.12357647807698819307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a098bd8c2ab4f75cdf5b14acffdbad9d0703f0664867c39f229f17102fa4b6a
Date: Mon, 31 Oct 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667216454
