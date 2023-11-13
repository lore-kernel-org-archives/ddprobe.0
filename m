Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B7D219F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBaSZeUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 861C3C433CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699889896;
	bh=IhsDOAvtJPMrBYUE3GHhYesxO3M3ZN1GTwGu/+WYHHo=;
	h=To:Subject:From:Date:From;
	b=tBaSZeUFwNMVUbKVRqA+RsNBT/9c5tk7JUWh1hEKEL4Ub6qCOnu3Cw8E4tiMWAzGQ
	 ggsNlzUxLQHjihSUP0e6jYyZwShe7PPHgpcEr8CKPvoIfRFTAoHBVCXgsQ6Ofbf9OR
	 3SigBUq6Gq6jnims7/Qs1s3auevud+sOfHd2p6OSXiB5z362kMvrcsh3XtmmQMPsmi
	 iIL/krF7gDIW93Hl4YlQ6ZrFZirVm2bJVI/YKFUeKDfGiDwZr5lcZUQo4oFMOtigSv
	 4tBPRMRVGKtOuxT+HQzA+lkdV7vlUyDiLcSif6gAUutfmw+Ip0UB9lJHZylrwv+JH3
	 GSdYnGeea8B0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67730C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169988989641.12172.14868885664307723979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff934dc4428cf0f10ced114b73f44f19b7f751d5b18daadaa65dae154f060e9b
Date: Mon, 13 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699889896
