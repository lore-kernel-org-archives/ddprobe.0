Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB3979C3
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC30C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672330887;
	bh=RtwLnbJFE/DCUsCk2TKLcuiRw5F0NiUkGO6TK8gewws=;
	h=To:Subject:From:Date:From;
	b=YpJvNomNyrfULb7ZgXlvGNrZvzd77pR913Vz98pXttDfdbR3CAeRV7kp5rQ8tAtni
	 350Q43VR2mVSRFfSYDGI4A2ZQ1qnw2V0upJi3OR5a/Rczqq+h+6fFYl2uCHd6TJoG2
	 F/29Jms1G6Zh5dWrbbV/N9DDn3N9VMW4Q5s+6PmcEKSZVDtGQGDDyxBnbRtae4O8fQ
	 I9WTUVcoYvtzshcGhVmw5n+kXC3sko7078tKeAfU5tBxg8xnGFcL3p+gmxBSnvf46T
	 8/zatlq4nmL47W/IXLQKi8wV4AngEoMyeKVcS+wRsYMmh+3Kv6f9BIarUEu62ZJ3at
	 8mTDV1xEH0Mrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F039C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233088762.8387.17933583287414207924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc7695c1c6d9ce7abadfafd53da2ab4741c5b2da699d73217d720d3afe72e8e
Date: Thu, 29 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672330887
