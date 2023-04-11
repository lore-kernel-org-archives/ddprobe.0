Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491552F21
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 21:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4158C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 21:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681246925;
	bh=Pll+PkoqJ0BGH0z7uWhHxqBDZcBN/eSoB3zRMmIEeQo=;
	h=To:Subject:From:Date:From;
	b=XAitv2/0UjfvkOoR5Ip6yItHXFmk+Vq7DFxFqLdwczV5DQHZvZ7p2rMW2hLCfGsgp
	 0nqt0zuIddnSSntPwZu3aZP1b2ufmWuyxKJ1t7MkfrXKJjwxWAXE+pVrhvRmFK61sR
	 GwLwLPIwU55wkrzhNxEOwoMGkR8U+Bd74g+VApO4XjqwyR7V41fYnMwyNNwb41cNYP
	 M1z4R6k1AofGjlWfFJGksrl0tI6uf8/rT/azgcT0rH8TaWqUt2IwGCFutae8JJTRcu
	 lv1khwyXgaj92AgIP+gEQrwPUzkLq+taT6twh+5H+0aI4Zsu4FWy4M33cgoGmM5wwy
	 ynFCAx/p5rArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3811C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 21:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168124692578.31289.14450760242242098729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cb8d479d0fd7474514aef85d7b22d34af98145770a9a27a67c106dbdb3d00a
Date: Tue, 11 Apr 2023 21:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681246925
