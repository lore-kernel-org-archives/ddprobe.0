Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B811105
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 00:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52E2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 00:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680137945;
	bh=hZXTL+74MO5LryHz9oudStUIj/64G56pmXYTy3mB8TM=;
	h=To:Subject:From:Date:From;
	b=qqxM1b7U42J3vhjXtZU0TKvKHB5aAoZNP1ajxtI2PgnXnOAAIdQBTlDrkGJrhRa9x
	 pn26PvvN9EyDWqkC7IXLGu0m1gbfyP3uO6K0S6U1J6IX9VTnkDY6TQEbb85Wa7Na9s
	 c02BEKSIfWLLd+gOSzne2BI16RY8w8s+hMKKPTUkVc1fKr5xWWfrKRVIHtM+umZ5xy
	 p9wgDZw/RfPML1drUNCSR9N9yKb9cXw7jSxZznRvNQDazTSrR8wOqQ5GiEzBRLOyuy
	 Bav+TzpN5seGvPR5ubW4PJnRIg0t3H855sqz2Zi48mfARMziq+tsK3XDVmGF6xsx1B
	 rQRfq93QNYV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9558C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 00:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168013794581.22669.6348301632108018134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ea0b5863aea50c42bceaadf1dad44a21e99480be8027008bd6225e8df22815
Date: Thu, 30 Mar 2023 00:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680137945
