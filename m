Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD47EA0
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF22C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684119545;
	bh=+SOG3VKogD3YnBCx1MzvQUTW2OT8uQ0Bksq3ToEoirc=;
	h=To:Subject:From:Date:From;
	b=LrDggUfz3hR92PggHfjpXqW3+3O5WLPjNkZxK1+GBBxtDClCUKrhLbMc05/sgD91k
	 7SffGRnkhyE5LLLZn3juRCGM9e4rw/qHOIGY3foUjelTZyCacj4D7+QI47Ac9E4WkA
	 WYadG0vO5//r/bmLWs73gn5aY2d78BJCknzBJ/MYRFqZ1rxyUyVogpJcaEzp4c+Qkh
	 V83S230+/KMJuyqBmha9hL4CHEkd5Sz/7zYiK9+PbBghnliggnINgh3Z163ach1C/b
	 PzSvoNXVnvntOz2lrB7+hhHWhA/jx15V4jme40auJ1T4o1mEdb3+Gl8aFZ3h/f1/Rf
	 AsKXwos+P8d2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF976C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168411954577.17538.13976785496599541529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f780e8f79e6c355a0c5a92978c3913c8e875a0c4672efeb24c9513a6ffc08ea
Date: Mon, 15 May 2023 02:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684119545
