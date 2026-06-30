Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40788393DE0
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782828514; cv=none; b=m4fBXLq5ZsuPJPJDRIvNzkplcxeivlsL8w9Fu5UpAslgPxA4Euu2PcbIdKwAII+lvWr4HqimHbs/fz9pEpG7V3IvsjgdHSrzmztyAGTtkd1DHR2U7qLPDUe6GfSBA/8gLbsnJ2Y8wlGHLl6wjHhQn4Pg5aGn4YfAceUK+/tZ8do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782828514; c=relaxed/simple;
	bh=bd9KPCX6DSCm7mNBTdMX40oT6IYL5hnQB7PSHQUxEQs=;
	h=To:Subject:From:Message-Id:Date; b=iyd199Ng/aVcM2dO4uotV/mMoxBz+ARBH4WHUaiXZff8/mXo3B/x7xdyLg+M6zb0QGEZ7c+6repPlAUPMPAcNh5XLZq8ZeCpdqq2C13pNMWZLFANWjkusnr3S4jainizcQ2R7mzM9qTKiFZWEBxgG3lZMRkVcJIYImTkbOgGwGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLJ6swNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLJ6swNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C201DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782828513;
	bh=bd9KPCX6DSCm7mNBTdMX40oT6IYL5hnQB7PSHQUxEQs=;
	h=To:Subject:From:Date:From;
	b=aLJ6swNfn2nha2j6cnTdTRbcs6T0m8kO/oANZMGBwhJzHGuI2OligGYORIwWGCLge
	 3Qb/jibC+6MpZ5TonHMfgyH/+853wVgbcu8oDpa5m5Tq8jGGg5WhsMRnLY5jYfswbD
	 34+FgANURPO3Yndqm5QwcdhYo/zP7q+ysQnbMRn4pMPLyniLPwZ/NBqawl91tRao2K
	 yOfZQEKDaVUNVz6C41hrsLIfvT0G8/9UIqqyfFm3sWq4OCDONjkD9svmn8s6AqMNje
	 bDIgbpGCrPincKjL9dfX/LC4EcbsiqqaO3IR3sRKn7NbVCba+QbZ1LrMNui+2Qvpd9
	 1EkS52fSRv+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D97C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282851368.16197.17017729274901940334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437005bad6acd3019d8dedc51ce69ad37401e24bf84d175a8c7cc192b67ed800
Date: Tue, 30 Jun 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782828513
