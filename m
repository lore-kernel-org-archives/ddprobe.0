Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEBA12B6D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtayJ8vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A07C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704619696;
	bh=iYW4AsQapzx69ped5fPNibXkiL5sr0gT5Ov89Vy4xJo=;
	h=To:Subject:From:Date:From;
	b=GtayJ8vbi9wz/FgEqNLzgO+iY7OP1/kyIc+qLCz86m+iQN/dIfLBSbiLlkYGJU8H7
	 o2Wqyr74PC+SV1j/J9XeYzR+z6F4dO7SyDGt1pm0CAdIJR7u12lUerzMjX/h+XSGES
	 +rjuJV1/fmXyALSDgKaibtfgCPIto9skYffpLfq2v2bRa/DmtOS/4f7IYN/ynj1MKr
	 wQzNtqrhYFhxdj6HM9mShyjr5vy37oOe3aumgaQQTWyygq2/bxKXN9a+Qdt57Ljop0
	 faCcBTWK4zNp/yTlJNqlwAMR6GY98FLjalP8BKwu17TaI/QAqXKQd0SR86S2nr6ZP3
	 NFE61QxNAOF/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A3DC47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170461969639.13683.7530366902612798938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2799d355355fdda4e8ec2e2f9a2c28ac70334bea3f3f88cfbc691a9a01da1e35
Date: Sun, 07 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704619696
