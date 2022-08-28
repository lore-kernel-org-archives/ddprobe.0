Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0BE190
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE4AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661675452;
	bh=DCz/p/P4m9KrltB45VDpINXK+LTzyHo5VgFYDmdsOEA=;
	h=To:Subject:From:Date:From;
	b=AuRPycgMbglLQqcHk0hFOsowbBGDjhWXNQHvLyZ5iGjT/voRqo3cX+ACXAl3+Fmja
	 K3mteYCw9cgUDWN1q79mlXHMvCzhMmhTgmK8M7JfJr1FTcf9/viQnrm1SV9zEvGr5C
	 f3HwaOviJ1sH1kiUr9aLpng//oHKSU3yTJuQdhTGTbVw9I/0VUX/Qz4r1T5CihZ45e
	 pR103DOToWdx/0mm+PLp+o18dC7Ff9H5iSGMDg1k794dGD9sGEMJOh+b4nP81lE2by
	 +MlC6REWcWFPo8MKk3FvizZss138Tsx/liD5epWXvjtFLDy7ogA1zl4RLfilOYSMsE
	 uLUCzacQdmDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C7DECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167545232.23341.10900733484903481982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b70a32e42facc4d129b9b190b56c39ddb1a44053c4563609444ba6b5933c24
Date: Sun, 28 Aug 2022 08:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661675452
