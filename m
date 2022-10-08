Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8442A20
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71271C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665188453;
	bh=PBPquzESE9xc3ECpRyBHbEubg15lweH86CjoPGrxb4M=;
	h=To:Subject:From:Date:From;
	b=itGlIiMwXfDbyf7ycHl3IfkJD4LqEArDW6nLgbSrVMCmVamC5Utugn3TVv0wpZz6J
	 zzrirMbW3s7bcTY5TkEXEjXZR1Q2qeXOxoe+sWCgeC7Z7b4z/h+Q8WMWI2ersI03tY
	 1xOvh5cW73VBBEKWlCnqn3ibz7o4wlDbEgt1sH4qLkymYNXtIRbkuZsgFlT1zOoUNH
	 gty6bDJRBQWNauPgVe21mDSxlElhf/BQ+fE38RgweFOHJtWqTFwtUSs5Tw7nb71I9e
	 psjLaZGFBFBN4+4y859/6xrhT4ABca8THPj70/J5VDdkZPWpo5iz/4D6puiw5+7Nx4
	 PMQM19LpFPG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545D4C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518845333.21895.1634056202798094371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3200083084e7304249072f316a9186627cd29028aa9f9aebb474220f922eba
Date: Sat, 08 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665188453
