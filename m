Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA76E1860
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72016C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666858255;
	bh=RzQJRlGX3/HO8BkB1e3IuYZV+S7mF6L05MiPQD7hVu4=;
	h=To:Subject:From:Date:From;
	b=mAubh+LrbxfVtY+kcnl3SLDKYebfQUB49rGOeX7j6nLxzx4NCblE5vlD7jomFBqDD
	 V7rNfTLEx0FNdsAdhykz2axosPVx7QTIHboLCvDTAGrjyzxkikanICammsF1jyEKrt
	 Nc1ROuUyWEC8IGQsClu+hMp9iqVAFGHUUSNU+7cCwORiuTj27m+Zs16waC4hnSdI4p
	 oUI5p0tzs4JckLApdzsJZQ4u7oYmffLhoUCXaXlzyX0ngWpjqw7dckXoL8NOhrX81k
	 6088/3YDcSrrW7azSYFr4fEEjmmmIMeCxtPXvbSlDaeCnNzy8zoSZHASlQdICju4Po
	 Q7HyWyQwEGG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F5CC38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685825432.7739.13109925005949738500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c7b0239cff7f898a2d008fc4ab3379751b541e4983fececffc48fdc98efb63
Date: Thu, 27 Oct 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666858254
