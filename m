Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05341C14
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 654CAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663679453;
	bh=zpaZryH8JA04wYJnpvcRw/cd/1Zd8nu7AV960dkTHjI=;
	h=To:Subject:From:Date:From;
	b=bptH5eAiOOMpp/tmAOp9D9oU87zAFq9bZLuBCoStGzx8qXJ7WeiWftC4zE4QOj3xb
	 2Ge4zCup14ohdVMFNmHw3x0x/yp4T3gYkYCmwJrp+4tmbto5qPwIN0k2ukmW4ZYL77
	 N5+XFFe+zyYOHhIYqL9LF0mJh5eBgh5sCyKH3kzghpHVYRaXpwtkmsNedqO+fOKOnQ
	 OY5YKfoDlUHUGCHAkzjik+P9GqiKuhFO0/iELCfl4cPdiEcZzB+ILolQIb8iqsEQoS
	 2+CD/x3eo9O4/ymsDjA6IMC2rjymfWOEh+v5/FwHtgd5JY5T/xnxd9rBJOMc5RWK72
	 jp0se6BAU3KhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5037AECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367945332.15031.5851378167111633804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e273464baf466cf57b153e82978b90780fe0e120dd9961954ab2856173c7ba
Date: Tue, 20 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663679453
