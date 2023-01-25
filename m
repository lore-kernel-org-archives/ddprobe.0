Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349874C7B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 15:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF24C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674661985;
	bh=YWO/zM1rSo0sg+LUQhmmdpXpmTXFe88zmSGJVR/Fzoc=;
	h=To:Subject:From:Date:From;
	b=BGpehZNuu6EydZoXaGemlU+okXNsTDQwGc0+lYh8fT1lnEcRSXgbmzCcQfF9CWo0N
	 lexPlyQ/i1j8UqKTNJNYBcLuDcaOKyuvWaJueSrwZx79MbAN0EUT+bTNUqXeSpDIOT
	 FAH+/RFY69w5+ZSPcjDA8d3tJcOO4LmrQ/LqwamxKTMLA2rkOlvUvBZisxncGRbPC2
	 LkM84C98HwwGss6rWmVpxk9AiHx7S1hkflomV7UHXleZGvbxGnMiQtErcnETKapGne
	 XSQ71srHe2GYu2cler7vv1qiX70a0dzullA+nshSmUCnQmhrz5V+FtM13Ha2R5dfvu
	 tAX4jySo1lmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE618C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167466198576.20804.5865419173609805133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc2a69fa7be29c126af36aef865ad86cb5be5f65b2b88a775e02c7fe767f2e4
Date: Wed, 25 Jan 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674661985
