Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4965394
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E27C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687615388;
	bh=Fo6974MvoC/aUb0IXPHO8YWyl1wHxgOBvlKwRhHizNs=;
	h=To:Subject:From:Date:From;
	b=N2B9ecpSnzkGsBxrH0syZGmWFLLoidZRGx2/cKjAmdPomktCBCD7CzB8SVvRsG5Ss
	 xNaU4Z1QIgTK5NDMvQTXPif7VNL/HhYgIY5rPaoz15uE2iiHq3cJOW2K1Fu0XjfaFj
	 LqEM9ASq/unTsKW/WPw7QziusMyaJ5M7OgJtdGCBBV6PNmhI4mS88IdhVSJuXMPmNk
	 qMJsMYqpWM/BXDgbmJVRuvnGUyPrUoMN1lkym0ncVdUr1CO7LtNKPx6EONnUyM1m9Y
	 BE/v1tVOR68hh4rdun9g/R/vxxrsljl2hrSNWX/C2K2taovOzDxEvQ1TmnyGxpToYx
	 WxQ6irD+w1M8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FB7EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761538866.29868.2031481968316723450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcfa177b960d00f84785dc0b4b9dbb32e6770e11a56db0582403c7f4e15a9b4
Date: Sat, 24 Jun 2023 14:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687615388
