Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E817BA2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C865C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668302454;
	bh=TNxpcHYUwkgi7PwZbFlSk1kKiGccAOrwX1qkJ930BdI=;
	h=To:Subject:From:Date:From;
	b=iluW+8YmjEYUH3sU4Z7YVh2mDNeCuk3bJufNEqVPOGZtDjPqVbJuQ7YqKhB4c9ycc
	 UxvWoODEm+jpLj3DzM3KSjPR/U6Fq+LBZ5szTM1N/kO/c12PQVb4nD/IDG3BWbvbtm
	 K1DSwYyS6l0t/nh2TZY3U4zc/SuCFDQvhgcPJmWBgPoOX70+wJCg1tS5nr4638B5IJ
	 80QDCVYcJUyKw2xuor+719A9Ys0H8MqVO/oKKPzeZKlYDIrS2MDo0yRFN2szWlg8dj
	 HDY0MF3n185KGuC3zW8WDuLBm9tdyNgS4n9RWnj7JayAz05XdL8ht78IxR0F9w4lqL
	 4Ov1AONOSP+yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E461C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830245434.20856.2963532504369895044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa497be82497d9f53be48c0d149d486a8cd366122a9499b1eac841542ef7b61
Date: Sun, 13 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668302454
