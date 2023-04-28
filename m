Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF6B17D8
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 05:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D74C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 05:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682660525;
	bh=KqqB4y6TwsqYFULDChHG/X3Mfuczi6aJm9iuuIsHmIU=;
	h=To:Subject:From:Date:From;
	b=q0VZ14yKmIyIHJ9Bdqt9+ZtEUknw8d2U2T5oOAN6evzB64vGohzgDknWlFXH1MTpZ
	 rUHX/NWK0htC8hAeeE7KRCsVzgqY8Swh8UkQhHTYa8hhLa5uwhqp4ZydlOTrTdmYiu
	 1ylVvPo/p8TDgkYmA1BtG4VpVWOPDkuxqKv+hSZUtEHW7K4nysPyh/w3HPvQL5FAzu
	 cEea3ng7f2zDE3UOX+uY+VYcM5/8KGuJy51+BVcvP121jK3a9B3RKUsMwQcgtLvFAn
	 0Z78zCgJYg/c2PJfHT916V5OaUU8hOUw3/Ff3Ljbnq+kiLDeoG49hSqOLapN9nKWi6
	 zdWTxfUClpAIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFE4C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 05:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168266052582.14929.9514971311094961544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e6dc8dfd2b36a0154739771d78da4481ba4e7f7f9f93a123a860308675feb7
Date: Fri, 28 Apr 2023 05:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682660525
