Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59EE7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA11C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668559254;
	bh=QQZGx4By62km+PkfjMop2S1XihPJeOX9T1b0ljWFJWs=;
	h=To:Subject:From:Date:From;
	b=tLcnqY1syJ/hHfdcsFVSaRIgR7RsfRByRCUtg8MwuieCFFEucv451vauTW1klzrAG
	 m9N70GAU/yU+qjSmH3333denND7dl5z7QnaNhy/oTRpA7SH+hZuYsTiFFgcd1zGswf
	 UlHZOiw0ci7SINmrfwkNjMVy/i1WdHme3xKNjHsa1adGaNI98M7ThvhlLIgKKLMuJr
	 Q9+zQ8xx8tAzUw21fG+vBYYUUmbYSYOlbv2KyMqeSqNnE3XWIJZ0eUCVc2/LqgN0Ko
	 2F4xzPVzWUAEHbLFchGsRe15HsbLySoz37qi2INZ3TpNLS9K3uX5Jw5xdBMhX0pcji
	 l7D4t6Zf8EP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AC2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855925434.693.5440258461989236039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1750f57496f7767f36110ad323a873d85f8ef03a18f6d2e8fed32c0f7d94d692
Date: Wed, 16 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668559254
