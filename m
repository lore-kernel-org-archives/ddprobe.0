Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF001363
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A85EC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662171653;
	bh=X7T+HC6bV2ZoaGGEotwPg2m6XDWXoyQFU5Q6f6Z6phg=;
	h=To:Subject:From:Date:From;
	b=u4Y+kTkL7ewuJPuZ2hrkN1eb5kChXgw0oWNtR0ruWV82SZMQ8UtCY/AWz4mo40fTL
	 EAI9rlY+0G9sR8FJoXU+3WOrWBy9DMWpa5cZGub/PoIaYyIbk9rebSSZjXINadFM0J
	 ZV9bFvpoAqXzegLlIY55bj68cUZhbD+WMEv3gnRYkKKfqp8pC22vn96drRD57l9qNG
	 S2FmiSTOuUXK3mADISRy+poC2Z3aPxPNzYEAZ/2ndsYzJfZ+l+33RPy02coGg08MiU
	 S2aCAS31sis5Rv+dLK4BPEVj9/zmZ10oamvBlHuunPA3fDpOrWEMfMdZzha/DDTmCr
	 Y9/tDa6KI8u1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539E5ECAAA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166217165333.31882.3034331853823361034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86983adf28792d0cb658b57e6e4710152fdfd4095a39c267ae12747a0dd14567
Date: Sat, 03 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662171653
