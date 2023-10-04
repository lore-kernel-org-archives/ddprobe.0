Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063A81BDC1
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF125C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696440368;
	bh=8HcWsxw1rtN9Xyl5sSmz/JYs9tNiYMXBrnVuChTooL8=;
	h=To:Subject:From:Date:From;
	b=iJuwBhqHkWpM+5k6T48+YVxq5l9c+sTEEQ5HBVsMIVOZVA2q804WQD/luOYyNsY4t
	 NGmmG+sDuGDeH1LIBO7mjilwNpF9+oICpgUIFzr0kdz6jZE4E45jaiiUH2WQ/nPJbO
	 Zr25Koz+9juZhQ2HnzUNAlZptXUjq2T7gjgRo31Pk14ZPaT9mZphN0GRanXrXCJCgt
	 jKuQeoYX116bmdv0GZMHdIm0HweQyZR2vOlEVxKesJFWWQL4JQDzpuFdLCuwg0m1Qj
	 YFoItgyjbt03nk1l41IKJ58TWS60Up8ePObb6NDhRNK75nSWyluN0BIBPok81GCkCE
	 zTLfDizhz3uJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4944E7C4E2
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 17:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644036872.10016.12000019914499574244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff3223dfbc4341c866458ab8db22e0a608ca21a7b0d65f42d9d69d6fb0fa7e1
Date: Wed, 04 Oct 2023 17:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696440368
