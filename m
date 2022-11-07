Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2095CB4
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F372C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667822454;
	bh=Tboin49V0JMEdE/9iq/lpBdaEeCRVFpN7c7NtVglcW0=;
	h=To:Subject:From:Date:From;
	b=GdCSPN6jMIbWv/gnC3JscYHnbBevB2w3r9VSOzNrdl3GTIU4izy/enuO9IB+XHcK7
	 AzMXhsA5oyByugULGe6iRwa0W1OxHhXdlivb1Wd81P/bdO30xdBnrzKq6ybgiGMMjc
	 pkH4wHitqrcMHO20IT/RtvBBVi9CM+gUaJLLidW/QjROEtB+RCpvZOavbUonQ+2Flh
	 IyRVeNpcwiCPMaMPkTMNSIfX7Trpsq3gFQyMBGwV1/uZ8uU9KNd4n9MqJ4tm9wUPYp
	 VkhUgh3uc/Y4nS+CBtOZfMFdhGrJN6mlJt0EEdvrxM1BDpR/tC4FiTxeSiNKBFQZIS
	 NmAQrpYqROSsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF2EC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782245436.17721.1859160516326742526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de94357ced82d09a9823322e8a91089600d32a930f2adfcb96780e3878fc862
Date: Mon, 07 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667822454
