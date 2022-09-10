Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2607E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E2EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662778853;
	bh=3SOCTK6cZypsU+V7NVocGjMSZwB9od84JPPKWy0Gl/4=;
	h=To:Subject:From:Date:From;
	b=VZmhHzhwPk52kay3R0uZ95yS/WHL87TZSAf2K5eKwPnay2s3+f1T4ZXy3ByZKcf1B
	 UGyj4BX9/BcL5mA5/U5sgN7UO22lBiwmzfocExdIVcVHCKNjPZSKeT80nZebOYp9Po
	 pWO3MrGYXFuy8g9wI9Xg7hyN76uUvRGVjlND1uSOv+jWWMMk0VfWejlC9Czq/EJvax
	 /BmIbRNFgjNib3rnJ14PUEgamwBcKPlynmCtrohlcZWZiuP4yen7xJCKsCg35P5xkQ
	 YiuJDFARExC6Y4yQrKkN0NwkAY8kQyICLVRsSqqLDnQ4U2Kqgs/ANrek6hJyhvujqH
	 VcdvKRmDIw/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E43ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277885332.17833.15374504373091603674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff382853a1086d19ee00c21279cf4331e0a0a61bc7aa2a54f3b4d845e4e3dd4
Date: Sat, 10 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662778853
