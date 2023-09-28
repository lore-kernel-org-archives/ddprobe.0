Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576621369
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 02:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A16C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 02:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695868568;
	bh=//GQoa7FXAliVHZ904qHVPr+rbavs7O89rGeZn4bqGY=;
	h=To:Subject:From:Date:From;
	b=keKSerW8ZLJrxe3CH/pWaSsfHdlbGbzDNtDzL3MfqyRVvbDsQAV9iPn4mDEMgm7cd
	 3+URnjLrXdKYsUeTfiuLodiU3B4tfhb1HOIchcCRb2ce7eb+bhhMK02J7rcFaU0C5Y
	 78eszq0VR/iWzpdV89CBSkcsnyFkO8ZKe7JtjRWWXsJED/5KecmGjPCmB0RwYPARwW
	 LqCdOXq7su4vJdxsi0CnCBRpaUsMeHKTOT8sB8CWe1DTjQCcHgWMUNU/x2bKwF96kY
	 YGo1tTP8gj4rl1P4cAo6K7wJnER4wBNTORBfjT7QDJKoJ4hbU29TddFatusOKR9bKE
	 35KQl7kwQmE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51B8E810D5
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 02:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169586856866.13193.14637968612535136044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6294340719fb3b033c8499afe58d5321f732d2fa03e00e4663c5717146c0e99b
Date: Thu, 28 Sep 2023 02:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695868568
