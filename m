Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB89D10E5
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9AAC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663647653;
	bh=usQobhbgADqLS3mrYBeW21a7Dp1uDaLZxx5EOOlg2+o=;
	h=To:Subject:From:Date:From;
	b=GaK9IKz4naNPbEMPJIw3KD/IWIivpySCe7RgHgxNuJvNBsC1yT9KbhZBgYKk2N4Xk
	 Hf9+eSOOIFAuM7Iz3k0ID0bWFmfJpkv99sflMmMImrX++RAflPnvHXLvMS0uAzjhOI
	 LpCqtiFWuf54hK3TL4xstb+3AR4PDw6ZyTfZJiso+65O7KyHOuNU9+68I50VCUrRBJ
	 ZDMVal0JET2UkZoO8RysbgUTKcM4RQpSLofd60ZgXCXoMlQEgetgJnP3Fn4WV+iZMC
	 wpIsOc2HZ78UZhxTSh/FVQN1Fms8Kbxmt1jcNrywmbeThkDZr/LQiNjeR5dU1y7iYw
	 DxNQkvp1VwGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F74C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364765333.23902.3643872638132503726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3804504e16b81fffb4c110f67d582d7fad1882478e3d5f301f576bb7bdc708af
Date: Tue, 20 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663647653
