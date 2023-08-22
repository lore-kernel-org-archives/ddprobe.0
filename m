Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C4F17EE
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E50C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692686648;
	bh=2jIBWMwhmQQqYMAmrLbUHcbkEkb4YRNXOggkT6yw8hc=;
	h=To:Subject:From:Date:From;
	b=YjGm+hfyiHy65O+m5AxvoaIgTjL3iGnXjQFXSfY++u0ZGPJeNAZuhe6dJmUdKUC5P
	 57+UCNPXc0cL4Lz7pqXWc8BBFz6d4HbqzDIrxS4xQID1uXJsiKiaonv9J07y/e9zh/
	 MOWk/r3P3Nbtjrx5BnAjeSrc17JH0v28VQHCkbjzIVuSdIS9+y7ougYtBdvnZGqe2J
	 f8hxmiBFlhlr0XmqxhMp1k7I2TMVcbduflGqievb9oB0TmLYvGv2+nqXRfi3kXh3fv
	 /YvIoiTZR+qmvj/yywnUeWnZlF1Yd+E4dwCoFrcUfozZ3y975Fwir7leaimXoV5eJG
	 KxHu6XYjwjlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3C4EE4996
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169268664876.24827.1521402243112463185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f276adc73f00c4bb7a7dd5641122dcdda3ab6aa6151b822e8ed2ce2161fe6aee
Date: Tue, 22 Aug 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692686648
