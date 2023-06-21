Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B2B34443
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 183DCC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687372389;
	bh=rU8PzwLjF6Plsvn9msoDjTGGS6dg3+TphPXzOcpXShw=;
	h=To:Subject:From:Date:From;
	b=O6FJNoxN1/QBqSvdBQAYXBK7sRaIGJIrAAq7rqFtcHmRqOCutmYSbY3wE6YBy8GUX
	 dG/q7TzA91zuss724idU28jhqfNv4CMiaeIHBQQtTcYLjFgB+isSvjanhld0ehir7d
	 t+MEFKqFvVI18J7jHlxq9deykFgAYfaE+QCVPkEBZur2Em23A5ro4xbizCmXTmi4Hp
	 rKJBcrR/s5n7dP7Z7kp+Pc6wQHuv0IByIoSv/xUJtBSiRzi4KWBiNU+BkZgu2+o4z8
	 YXBgGU1MCdGvVB0hsNa/gq1Chu2+jTo0pyIjYjv9mnrEEvlNOSA2iT0HrYJE4GBFAu
	 QVdq1+G9AN1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE29BEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 18:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737238888.617.6986458532026936841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8596f0448fe5a8d7fcc4bba3ec0f7447b16027cba29785262b10f6bf3db70b5e
Date: Wed, 21 Jun 2023 18:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687372388
