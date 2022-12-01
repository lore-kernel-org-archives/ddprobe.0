Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B667EA28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB4CC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669858854;
	bh=8zk3kQVu8+PImHc+KBhD+a5UvDQu43DniFAY8XOEWJ0=;
	h=To:Subject:From:Date:From;
	b=GE8e7ObiBefqWiblzQ9hnHL2aSrjxPpzgUZxrO1g5LiHvu4r+4SZhrzUhdt9UleZ6
	 daXMJECP3l9WjPmjupEhPC9yh+VYqwoJMKdWK2GBw+Z481fwdY+iBFgXzZdUBCwVQe
	 b8/BwT4pvXi3iB1iJYCSOZKTjxeR4/gTiXbrOG2/5OpqroVcTblyzwfax+jO9WsWMv
	 zG9PCFb3b3s9j3UTiA27Xck8TzMrNZNQTfFmOp9zi953fZcwHwlVK5yn5bIXjbnJRD
	 y+TgROUEWlfgDonZHdrT/wDumWi6i3CPR884O65CDp9ktmWcS6kIQp5I+yjAkbVGic
	 vhsp2+99UhM0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CA7C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985885433.9809.6327315677762697959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cd451ea41431989561dec3c6565d7232574eb060f4590ba349210715c2754e
Date: Thu, 01 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669858854
