Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E48163
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D781C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662431453;
	bh=dMH+DQ3Qr1HRnycXYaJdFjRBrBW0yeU6m6iiPXDehII=;
	h=To:Subject:From:Date:From;
	b=DApqEcZ2B19ngYb/pOq4APlU3CxnbcIfl12wyjKWHURNCeDK8wi+G3GZrOGlGxYu9
	 mpqYhEG+LwIH8RmDWCxza+/8ngCkMQpmhELrl6cbSdJYVCIft/8z0hJt9LgY3MKWSI
	 mtTviuvpy/S6vfYYVlBZN4vgN41C9ctz8uRUi9kJAmZcw4D3oAlip+j/4ZZL+57oXl
	 6S+0fpJ/5/lsMhJNleAmiDXamx1D3MiTiy3A/1yAODr0Hg5WtPdN3b7AsQCGa+5A+u
	 kYUakOefDas9sXehjJFm87lfHItvCsY0opWrn8nJ52fEo0gPeG+e4Rljmt3tgBchrc
	 jwjh44p63mqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D25ECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243145333.446.7254249004137249066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845a43c3a664686ce2bf7af305087d101a08e7d516620ae160b06b4ec87e8538
Date: Tue, 06 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662431453
