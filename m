Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530227F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7ABC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688935628;
	bh=NOUl8MoZ1rupPbt2LPHOiKa5URbcMgb/c+uhRBDhftc=;
	h=To:Subject:From:Date:From;
	b=flhXP454fBCrimjX6OM7waF6YWetvPlH0RXa69zEb0jG64h7znTDi9u7apCrSiafZ
	 87RwwxFBMfccVPSfrCDckz4rWDG/3QRolN9hahqTaebp9w8NThRWJBJaqIT2JoNiSn
	 +Tat8hEHTNkMKfLhsEaB2WxUjRjw9H/C92zZmcuD8dmcWqleT0JT1WT5x1tGkatHu5
	 7J9tuRVjjLw4E3CFSC922Ha9eeoahuPbIUqukZ+JWeT87RPPri9GsNoKjpB+i3NIFC
	 Q/Ut6GHRHv1X0ArAbu0LOiHeOyZ1Tg5yYjb5UPU2XsFzojlXoAPPsTU8+YCckQLaP7
	 dEqnRW6wAnZ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF556EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893562869.12690.7058070216250032733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8100221084af474c9a4dccb11bf985b0133ee9d20d95a796ad4482046f19fcb
Date: Sun, 09 Jul 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688935628
