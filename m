Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5BC7F4
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 02:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA868C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 02:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690079528;
	bh=gG0HhuhYFEyL1DA3isb5StDrhf3SEaiP9r2IwnBOvnM=;
	h=To:Subject:From:Date:From;
	b=tLpdhYROpC/Xc5E3oJSHohZ8AvRHcv21/yD1jiu4+n275uCOhSZu8Vi7oR6jl3Cmk
	 cNtA/VHFHXvZRGhKRP/54ZQweP7OEKBaOXdxk0qHeMMoZm1zXA3LnO2xSAb+oeCx7J
	 RigDqGAhSqhNzk+slijWWtgLMfVyJ/0ytUGUg7HAYneeZJu/bI6j9wVuo8k1S2ZEJq
	 3ecd2XsfJYGJRXV7YxEuO69VVE0vqnmgkCW6DuH6rkukBscHQhpAs5bYbFBTzbDfPv
	 eoUxXdxuMwResng7VJlEGdm6IffeFFPq937CmPPuMozyhx/66qOIXnDqYslKmlL40R
	 Rc8jcUm/DRWGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE861C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 02:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169007952868.19524.16740473110256899488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baaf9a9fb7740a2e0a10bc00708aca89c608d9e2a80dd18984506ddf97211507
Date: Sun, 23 Jul 2023 02:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690079528
