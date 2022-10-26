Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EBB10FB
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E462C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666775453;
	bh=jxA0NWRAO42L7rd4SFuzPFX6dAV2A39X9A0XNLs9m/4=;
	h=To:Subject:From:Date:From;
	b=qSq0ZaBY5MSrD3rhxIAAGQJpe6U5vQfztIMozsb7EyL5UL0kGaEjlPO4+FuErNEWd
	 vXH08yoaYcvZxl3CGHPEN0G/Q/bBM3RDJTj7oywSyJ5NxnyA70XP/QCwsYGF4IQNrp
	 iWMaJUZfJ8sstJEKYzjePzCuZm3sE+cwGQjrVrGFAKbKnelfhtnI/qBlqLw9XOa7di
	 pQlGGnb5h/28lzA1tXAHUHswXEMe2WeazB81MVOGbWvHlv54FCjt/j/SJTfld4JsVx
	 oqskBaTGeA/7qy9sFkIb+CCgQo3J+zA78vIzkAacIOFyvI7FA/rKsPYG+VGnwqvgqq
	 Up0g1+RHUoxCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F44C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166677545333.12061.5918240623236233927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded43fab44fe0ecc0873f970812176858da43f2c807768c61c2ca54af5dcfb78
Date: Wed, 26 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666775453
