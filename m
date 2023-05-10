Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355863E
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 09:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A60C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 09:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683709865;
	bh=X9Zn31KqkQIIiJ2pMVMv5fo9s3T7Xg4gmT4QriG1vjY=;
	h=To:Subject:From:Date:From;
	b=u+Aq6ozllFCgy5849R9s9Wx0hc+9aHsgYNec4lptCuvX84c5ysauzg7SxpGVqkTT7
	 WPwWTTRiO7yEdh8DpTwuPqraD0vnq5La36PRDWdddphtXeWNMbHcJfVsHgQ+1jfCyf
	 I8JTt3M6mEVhRkqEgUiDHDkSnYeN0bquwsX/wPlRO98z6CFyos0MajltJZ7SJEBuG8
	 /OCSnWvv4ZXWcb1qmis3JihElwJbsSWqY2iDHpRS3SzyFctC039aKee6z03vnurIHY
	 Xn2S3Hwkr7BkwZTeCdop+asP45q0dx0AQ9OgyU/ds7X3zeq990HuoWSqNnbOMWziZ1
	 EuyrrfawoiFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC005C7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 09:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168370986575.32483.16967921692217563297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb440b663db7e7c9b184b04e5a78f7cd68876036d4ff293fc30551185c49cc9
Date: Wed, 10 May 2023 09:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683709865
