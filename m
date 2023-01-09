Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A0328ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CD4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673256087;
	bh=NVwqQD6kwxh8K3v1bqvbn0bZ2vjoyLPdLpGhmGF861Q=;
	h=To:Subject:From:Date:From;
	b=Ha4FX7Fg8/+qMor8jgvd5fVk3yP/BbKoz5VY2yZUTUADKkLR1H+0xtZLENujN2j5G
	 1aOLNDqNKiBIDhffriMwWRmr0wj/Mw/GEXq6VNsBsrhDm3y+8qLUPeo4pRi2x0VIVf
	 Hhay+rW7KFDzr9+1MImXf4NECrug1JeYhtl4p1A/GVMJaN6vYQjK0XyF1yi1qfgogO
	 6Ont/64GosGPjdgXp8IAeNwMwL/gwiCKrYWXM14D96OnOWEqoXBrHx6tRiX6at5wFE
	 /vruXDUUmr7W0JV2ic2MbVPu3qPRdZqCE30JPnHd3HmdmlxL+4f7lBpS7dQozD4EUV
	 ji4DQUvE5PvGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65048C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325608740.23055.5208128294717055981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736c46ad5154967864b056c061313677162e176be0683169ca06cacdf84f2ee9
Date: Mon, 09 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673256087
