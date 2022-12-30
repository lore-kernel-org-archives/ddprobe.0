Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6441105
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82629C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672369287;
	bh=Fw/5tAwHdw4S1R1pbddFSizsj+t7dZoniiQ3ZkBur7g=;
	h=To:Subject:From:Date:From;
	b=bVr8s8gnJDdEf/m1CkScj0X33obqrlfZ2tnVn4CfKQDwiC+4rWrg7YHH/Qw00WXil
	 SJXj7AXnRNgLFYP4Pv4+4MwF1Ngte6yX/tJ6+jAtp66sDJLQpd2yQ1x/uYIKg+HjkR
	 mElt8wE40EjVMuf+BzhRw1ULddqqeWEFQb7pi6tZ+0pfSelKPGuC5de4UobiKQHy5s
	 4iRcboFW/6CQkyOOLJLiN4xCesLxas3r+1003lvpPPSIMPOgs4iIM1JBb9VWfvMnmx
	 VDk+UgxeccItyP3qaTSKPaLSmFmSxFS+wGr+tUhA5AQairBDIFMjLf2izdL3c+D8P8
	 MbP+vjEWuxHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6643CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236928741.25773.13391059350392256538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e412cc03e98f6b37cbffc673be3f23b3841da0ecbdaf782097736446df60b854
Date: Fri, 30 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672369287
