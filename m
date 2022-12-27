Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5C163C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF08FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672171887;
	bh=Vz/XOwTM+jhFdFQis0LtXpT1HFDllFxvbZk2Vvlgulo=;
	h=To:Subject:From:Date:From;
	b=X4CcVIPgLI++Ut7mRDKpdGl49kG4yU6t6jfY/zQ5n7/q6vZKkrlflPx5R7eH8KFJt
	 FevTLX/Obh/Qt3DpSIDe6NiEtwx3DvPOflUQ2f45URj7e12FDJy4g4Emod6xao0yzT
	 VUc7WqK0saipQjVGqfTLGZmRBReXCSUDI+vsMsFENn2YxSaw3RBmnHpmtKhn/ebYRd
	 KbGc5Zo7G+rbi6qsVziSmTP21maKmr0PpJIpQqExaXPxOWLxXQYWhf1AzXkRqLkrGi
	 gQ4qO4czBezFvN8GMniErZxrChEia6648QgbmIm3ISJurZbRM9ozSvG0WDQwxU46pc
	 mBVHLHQqtI1Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A7C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217188759.2927.7708478528922816234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d038a3870f1bd7fd7d92400c1c4dab8411151a754396a3e094c9c769ce77b9
Date: Tue, 27 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672171887
