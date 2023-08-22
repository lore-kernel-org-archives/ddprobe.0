Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1A310E9
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 01:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38CFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692668648;
	bh=M3WkkchAR6JkAkMQaqqaEFbOEGnfZhRa5BbdixLmSVQ=;
	h=To:Subject:From:Date:From;
	b=edSLizhFkV+b0SgKPAZKcXou+E2Eg0SZdD9C+j6jZ1+2l9jRG4+mkycIdGDVoLr4O
	 JmCBUeot5Q88B6Xz7BHuUF/9QUXmIaX43gk3kDP6a+UcN84gNdrUitJTYgys5KUPOq
	 RjExHVKOgCCL+4Yy6Dgpo3TFMyuLBmWBurbXjhjEL92+oXuobouRf6lYtApjTNWEwU
	 kmOTTZ4Sj+kOvKeqFQ+H8uAx83GzegvWBuKTuh5Wknd9Dldtmnvt1EOr458YFHg2Kb
	 c5ptq5868FmJPCS7uKmpFq2KMEgpBECwg3Y+F32n8TSsLEnzF39iu2OnzAebB0QNHY
	 C5PIzsDEnMMhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE6EE4996
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 01:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169266864869.20602.3946747039007843726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de6df0f96b5d3c00c31c817ef86f594a7ff306c5db6a9a72c87bfb2e3d49265
Date: Tue, 22 Aug 2023 01:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692668648
