Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1FC1858
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 13:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF48C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 13:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695560708;
	bh=vS19Z0PZjs3/3tzO5W2ELhQdmyjcHlBVEb2/1eE50x8=;
	h=To:Subject:From:Date:From;
	b=MMluxjwTjm1GzC43eDp1mSz2n0hFQ5EN1CItgaeZfbSNywv1ikJ+BCceDCQ3cx/gN
	 yClVp4eMV+Zsu9w1O6sfWcrRjoi7Pl/wJJ0bI2aMUo91mFG98JxOxPvuimXUi5E1hl
	 ZaQmBVj633eG1+BkQLzB/5UdL7clYhhF4tLmXdhh5fDmcvTTdWNevjz+6Bz7HDIg9A
	 vJs9OzoOawK+3gVu7Clw10s6sGPS/+iPrPe+TmbWfcAP/1bSoYmDOCjBWixvH0xS7S
	 iMRpyyF2SrgySNGIvnCgoGO20IQUbslpfVhe7fZn+PVspM8bsR/tqq1LdjXMnXSCRx
	 lHOI5qouEyfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA851CE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 13:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169556070867.21225.16980589816275972716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc70e0436330a9db5879b1dc0e96de1d234deb4ba616233a32e27698771c35bf
Date: Sun, 24 Sep 2023 13:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695560708
