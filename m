Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA2C7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A66C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661617852;
	bh=Qm/m50uMaj6WZWcpjvYV23dd2UcRQVH9gcjvvF5/oPI=;
	h=To:Subject:From:Date:From;
	b=SdIsDj3aFw/+9/3ms+Bh3LMJBTH42ct5ZgBwsC1r7E9j76n1FqXSMGOSDV3MO9Cjj
	 GQ9sizoVU4yduYCCNYmTH5tPWfJvpjg6Ecx0V0bEGfsd3tPB8V+c4VTiNWP5Syu1Sf
	 42upFa/zvNNvk/wz0bnEVwWq3lYgm0Qk4TNF0Ffuv4t7snekxm4KHXDxXXykmwxJpf
	 hdVbM2Nkk8VWdJ0zAI8M5o7eaNNeqq/pFOQ2jDD0/xOuGkufIwTGkZOMCAAgda2bW/
	 wznf8DxTTLSjNbu/jPW7KuO+ZPghOi8jXSCzBleF4O1KDbhjulQ/k1WNLxHxp3Q0Rp
	 PudD2Rt+vZl/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580F1ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 16:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161785234.2075.700520850616497058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0404c698e2608cbb372dbd195468d4523bc3eb1529f135ad2c1b6ed8c63ea44e
Date: Sat, 27 Aug 2022 16:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661617852
