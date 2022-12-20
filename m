Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0C01112
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879F4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671514287;
	bh=HLwIaBZxYyTxU8C3IV7PZUeaQEHxoFReRX1yB5XDMwM=;
	h=To:Subject:From:Date:From;
	b=nlX2VeCe7jXBI27Qa0/rsOfXI279cOYyS8r7qdrnoJyWHeA20kJlhgg1jXA0d4lmR
	 Bbn197tENeyLy8PANgQon5RoANsqvvwAr2Y4aqbMi90U/vv+KbIRkpxR2a4W/VL25V
	 ns1g/haCbOo0C0EDaKR7AL8ir2P8IlFAFjO0ovGV53wLdWR499X0i/mGELeKi7nJ7P
	 J1Gv+9PQ72qZMb0iY1ZnZesQ/LOicCEQKFAb8H+BDOsfv3HspB58AvupiA1m5ThyxR
	 arujVLZayP8lxJ+mJXTR4sw6owl4BqeEiaQEUqRuX6HAcNRyTJfT8mEK4uOJbcc4Zw
	 r11OMD/YHnMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D708C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151428741.23894.1090323935738499893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2d4a50a3a81f3ff2376c2c66bb5e3187b48807f17fa9fff068f971896a177a
Date: Tue, 20 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671514287
