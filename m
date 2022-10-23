Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61C720F7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A227C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666539053;
	bh=nUgMDqyuyTYzjpZwL83yl8n/x5vQ9LLbQxVstG64Xso=;
	h=To:Subject:From:Date:From;
	b=rIF1yAckcm1al+2KG9ORXhdTgDroBOaDu23Xpa9u50kniLrVU2zi0YHak81VB0/XP
	 WN48j7qiMi++tbMYpl6tK+icCz+ZvdYAs3JsCtfaMR8jpTihFnKat8vbLxbJ2HDPFx
	 eJ099yod7wbjrUDqZps7+xqPHpHi5vm3c8nS3C+f84dNHgEnxmEuhwqmpvSeKZBKQL
	 QPIh8qlB0KdUc/cysW7qE5VLp2rS5pS8W80dw1J3sm5kFp1ytUikA6vp30lYVETKdF
	 +qT1LNM2P8r+9E9uDpX2z9IgJ/pWayiCS3Mhe5t7JpXHxtTrZvdV0h6KbQNaJL7ZLn
	 WfoS21Ln+DIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCFFECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653905332.9518.10845899456987514209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809fac38e8458b4f7430cb6244d7c89f0de3f093de1bba4d5a72fc6e1909536a
Date: Sun, 23 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666539053
