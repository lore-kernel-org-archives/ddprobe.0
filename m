Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDD433CE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A36CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671821487;
	bh=wRxd/1BX+50C8ePrJ7MYtdIyHV60MAiTfZWmLe4IzJQ=;
	h=To:Subject:From:Date:From;
	b=KFS6oGNZCA+Kjk1mgrOcMrzS/0gAsxx7s6RBQ5n0jGl7xAhVlROI2cHTqjbWsktSm
	 VKAxGOrsMVynLxqVp09hGySinBrQ9AhReLdDyGnzp7TXVeoymQo+be7Wz5q9krKEx+
	 B+RDH6hUh33UMIOQUDAwwKVOTp5QxHJs50vd0X3U+xLNBRKErJ5vx8KJWoD0GwVL/G
	 WztVWyZF9hG8LG7X3jR+/i6+KrJ7a19TAEW662OTfuTI25PP/LSQw0NMIGHPwmgNmR
	 uiP5+orTpfsDTgmnmQQyqtSPrVZ9Il5vwZN1zbc00pd16g50bKbgbTzUlTyiJ/C+aJ
	 RnF2R4kMqy95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA98C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182148742.16672.15430084628035676188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d397f4133fb89ac33e24389c80a77d4be7dded7752cd903d7f533f6712fe2b
Date: Fri, 23 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671821487
