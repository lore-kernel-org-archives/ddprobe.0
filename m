Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA77450FB
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 21:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3969C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 21:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695073508;
	bh=yaBQqEy6azcj+4cPNr8cBKEoVuvfRyyY3lX94EMzq6M=;
	h=To:Subject:From:Date:From;
	b=ZQHRQx8yDgtMSsaiWaUseGI4U4QCVHTNTO0VCkNpyjGCqfCpfEkXwEgxOtY6t/muz
	 +U1uRF/NqMZIDz/2EF8RvPnMrFvaL2kW/8vDb8xydA7aNnVCpeji4rwdbTdkHgKgRD
	 8bxXqFMIBMnoiiYjDDEu98OmUg9HG0fPk5r/p6Iq8XkTAUC/t/HePXbwID5QMBPE53
	 JBqjA40W7yYNNxeAAwzcIQR67lNrG40TwULW7WerF/WPy19DG6W/KHUlWmWAfi0zM1
	 M2fRh50VXVRoYBHvaVM+TmzQUyWUE7LRUFlZpKCfuWYSOAH19tq5wLF1VV59JPOncP
	 gpk3REQOCobVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5097C46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 21:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169507350866.32408.16421082999813020432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7cb4249fa4ca99791ccafefdb1c71755e1863391d6e5c45c440bf6b3f02b3c
Date: Mon, 18 Sep 2023 21:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695073508
