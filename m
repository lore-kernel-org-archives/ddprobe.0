Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029736AB0
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpI7y4OV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7358EC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702021096;
	bh=hnnztHToyjcmQCr15kFovpenCkTUVx98Po8HNMGrY7I=;
	h=To:Subject:From:Date:From;
	b=lpI7y4OV9quP6Bo9VmArNK0XMdE89elEJ9fmR2FP8hefsue8Jsb15D0uwRk6Rjpby
	 nSfwuQhu/V1R3PdNOctKhwQEOPxMlI2tJ9SlAzZnTyRrZOaEYnpucBoXOEzdgcUSbv
	 qUJt2tS9lAZQ8T5UEwylLW/txNHt60QUy8sZcx8sJWrdQWiingAefyyQ1vABMRHn3l
	 D+vD/awLSUhnMbpkSshywjBq/r1ekAmJJakggOMwFBt4a+A/gR/yxW9/SSDYWLYKOq
	 T9/zXDY/XMkCb1+ky4hRmKKV6K8CuhypclozMf42MK2riMaA5VoNFA0esNv1pYG2Bb
	 vz6foVEONcapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6FCC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170202109637.8065.8639413841982480540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a69e65f41d5d0f9b1aa0bdee992f15dd722f17a3efcb048f2760f3f49b74ab6
Date: Fri, 08 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702021096
