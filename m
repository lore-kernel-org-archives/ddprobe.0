Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5BB3FD4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7567FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669578654;
	bh=zecqyM4kTkoZkWUYgJCYktaJRmRfp4cCaA7o3qJFDMg=;
	h=To:Subject:From:Date:From;
	b=mUDuBvLNK0Ltc0kDwY5PvCn2gQCULhvIfYMVzNl1ncsVBomUwflbGULXfosSKx8+g
	 LebVagIctbY/tHup7iaRoTVsogUJJMFR3hVRX25N+3inrSLsVcChTfDpn3J8h720eT
	 tFpdp1V2rDi0YNvCnTy4qu9+J3NL1GTg61qJnI/QTt8rXAzY514MBigWQ/vOSAtgXt
	 PON3L4PAuBdBTELWQ59XmDjxyA0rDlGiMtHgiGZqD8u66l6JHp3yitWxXRZknTNCP4
	 tFkkH2XTQiPRc5l+wEyxh9b/EHn3047f4zSSvrNudQxq9BkjW432whH5kMSJWqiTEt
	 IHxBH41bbL3Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B497C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957865433.29528.11284531779093980532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1be4947832f34d731b1e59bcb0d02852af560f106f4cbaa33b5a8fa95800e3
Date: Sun, 27 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669578654
