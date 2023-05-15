Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5887C18C2B
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 20:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13814C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 20:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684182006;
	bh=eWGAtqBy21Eqfo3+ZsrBWUpvIIScVbG1h7VLqD2gGU0=;
	h=To:Subject:From:Date:From;
	b=gFYD4M5kiqfaaH8QwD1NsjUrBv7EfDey2KdDflDc1qb+vTWW9J1+lE84qn85RnL3s
	 SvyH24EXD2/5h7Xv5/zxAKLRR5JP7tR9Sa63ayxHOFqHkmXO7eIzsZWbKMdKu0gprG
	 EOy0YpcFElK3k7osWESBFxQzwDqIU8kMIEcdEGz00qi1yczZd0sgQmWqZfNqpdjvjt
	 xzC95JlMq9wu6F8Yd4VUMComXD0R/JjhjypR9dUJGP8DfWFl5QANAb+3KlryraN08l
	 4FP3x33fbkEHLyz7ihSGQskvMLEMdhH5SC/xYUdrRKfgzrDdmp883RrxO7b7MDcGns
	 1CPulJ/6H2dzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE835C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 20:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168418200590.11434.8463709019678492190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826217277b9194eb4d1ef2896948affe8ea77fad90eb6042f1c447584f984a09
Date: Mon, 15 May 2023 20:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684182005
