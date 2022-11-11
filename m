Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC12A24F35
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC44C433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668183654;
	bh=TubvfZZN40l0mZCTUkGUzlr9T9cG9MbiE+7aazJHUC4=;
	h=To:Subject:From:Date:From;
	b=u1mm1i/WP89MFreNw+gGx2ueRX1P+TxOXGxGyorvkMbk5UYqX5y/3Qk0RAh0XPE7v
	 kbyH6eEMmWQo/64v7NyqMCZW+YYTPZUIKq+cv2JYHR86rQ94EN3W//avEHtNoQwC1T
	 Y4DjRERuyUaiQ4Zx4ubgfvahNMqp/IfeE8W12JYFBmSgVqVyCNgJN7goOC0BN1xSW6
	 0q8CD9/0x2PX0lRyIBUtqBtHvEqin/piugXXNQeBSDfGRg6Xv5VYQwHQls3Rpwvng3
	 nss86GgbHFUKVrP3jE2gl8+0OlBXCxJWSRGVZRpBb2LaxIRjpYLzHqy9K0BtGY6YTZ
	 qYjd0yj4p8COg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5205FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818365432.22062.9743826083058740322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daedba997ec28b58a420a111263ad983dc54f9655903edba92010bae98149aae
Date: Fri, 11 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668183654
