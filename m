Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC191079A
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48E4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694904308;
	bh=JMng03120HsVDbRdPXSo07U9hphL+cF6YFF9o2dAlH8=;
	h=To:Subject:From:Date:From;
	b=luoIDhwJo7JLV744Hq8HcabxM5ycDYU7pF/z+VjZVjVTER137TEvvbVsNQMRKTf/8
	 4ysaGsrju9Q9y48xUPItbnoPSR8XRu5MKs72XnPlRQf4pqtnAhTgrklHA8kBMvWVuQ
	 NyBn3iWWU9rNfvRV4HykY4LXDpjiwVjsk/dh1nYwKmdOlTQchyOEkIfXebUaNpBdQW
	 hvdVCmtwxKqGJQtCgWrL1jJBA8EZPKWJXylBVOOEozphRsHtXkG1u1tmMLdNPHwbWC
	 tD7+EKnCfPMb8NlTZ/u62iqxrYsj+NaaJBNnkcIIc6J6hzBPnDy7Y5I8t+ieDSSMcc
	 ehD3R2J5NkuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F7FC2BA1B
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169490430867.25972.17383633377494767720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10b53917d20d67891f2c995638dab8005a5829a61cb3873f5175bd6d47cd8da
Date: Sat, 16 Sep 2023 22:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694904308
