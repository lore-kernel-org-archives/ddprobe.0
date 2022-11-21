Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C405EA4F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701D6C43148
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669021254;
	bh=Q/nmOIVGNbE2iZXO1Ymbkgm/AA4M3NX6dn2ldXz0Vhc=;
	h=To:Subject:From:Date:From;
	b=JxdsYCWAsa3NDFL+6Lk3TvVnvPFFyzhxSEAfNgHw2jya2bYIr6uvSNqhBSfD70Sfx
	 fJezZUfru8Fs5GITdF9cRvRm9wh2DOaboAOgu+sFyaSYjVXlzslsZNXOm8VEDU3gv2
	 P8V0tOFXoS71CAekTbsw0jXLOtPm8VvZXBqCOO1ae5HKzrrLXhXyC2oUVaINNrhHkp
	 v0sm2CxjTTm5keBr4YUk1hyR6zo9gInF4RRUtc4foLInDXBBrudx4xmZy9QNLX3XXg
	 Fve8C+Y/aVIyiKRxCArY11dOH9KgCf4MPuz1k0TcBaZ0TYTipTpCekYD8w5k6F+Seg
	 0i2iOUxxHTwBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2CAC43217
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902125434.1603.4989200736615218496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fd2b7479ad1abb49751223b1f5eb6111f105071fa4474855b05bc422bff47e
Date: Mon, 21 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669021254
