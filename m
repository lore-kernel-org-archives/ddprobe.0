Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434471107
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 08:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E726AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 08:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682498225;
	bh=6xa2cDtaVjrd9GWxyfcHVGWs8V1MXvMXz6Wj8bL7Yj0=;
	h=To:Subject:From:Date:From;
	b=oPctxPUEP4G9XTksVmfnsF8+i5jR1voaY/fRsgcVkYV2WnYTeqxDMh5n1I+WPBC9K
	 kYw4TLaVtpB+kPw3ozORfYE2HjAxD6vYobFMAGrsssAZ2q6rvmiwnHUdL3r/RXe2/t
	 bbUI2kdKnblSw6vCEP1bU5+7s3M8E85uFVfM6YzxWlvAka+MoWCLORT5QXfn/QStou
	 ZHBeUjXU+KlnEMpRlX7aoXruQj2jnY3yYuL+NoTiv8uV7wD+f2jGdbdqKJMiAxcTz3
	 CzNKoQlALnbkoEuAaNILRhk5de+OsZ/hRaRjAEIX4AMA83irSb5ckq4gF2aNOJxo51
	 MZPTtAWrHuCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A0FC7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 08:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168249822579.2925.17155985854504848335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2218b3ff5e4d5e3db6283f97c733d967c9800345f6627ea58addebea35aa259d
Date: Wed, 26 Apr 2023 08:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682498225
