Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECE820E8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F46C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689339668;
	bh=xCLaijd3tkjORwE/VUZTP+LYNajms54cd1LjXuwCRTo=;
	h=To:Subject:From:Date:From;
	b=YBWYuV2yVkMEjEO1qHKf2C4UCYHwto81/T9XIHW0JK6pin4NK3tR4FoBMjPji2+9K
	 lmkCCyTkZKFbcRtpNMSMnNAxMJ8SZv2WWbYF70nogwJFf1wToGVoSZ29azWREIrneE
	 OjyPXrL3c2giCjb2QY96/Dc6yju8ccrzmfGtxFc2vXfvRvENvcfyB/ujJf2l4EIW0f
	 YZUU74IrQcOzepwbChNgRhFwKL3ORBffKBzqOOvM+gJDDVIEXb0CKi8vPtQslmaxke
	 mPep4bmJpXHYA9hKnw1PxfeGVMHicJqSS6YrkYWsv7hni34z4mV98yT2VDJDp/wp0V
	 LUfHOacHJpLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8257EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 13:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933966868.24059.9072638309900274763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4e1a7b5345ab604e674d0051afb915b45fccaa5195649b74317a2b06e558bc
Date: Fri, 14 Jul 2023 13:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689339668
