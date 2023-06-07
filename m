Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E82F210A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:52:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB613C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686142325;
	bh=bhPWzpjvDkcyRwBg9JKNKbDcBb+n1RYtIOZmtjpHdK8=;
	h=To:Subject:From:Date:From;
	b=rscYMOMhTNcJ5EwPqWiMd8NrizAjbHD0t4m2iiMjMQmSiEwV0NaTFC0lKAfNdmVlW
	 0vnUX2pQS+iKaTkaYcZVUNGbkzB2e6BR9p24/4/udoipNIcuzX6fw2d9m11kRu5JGW
	 6UKTof1ikvzi/0bxEZ4dzwO1T/K26WXAoKGnbv6S9iNJ7ASkCjy36pivFFJCOP8oF8
	 Azd8PCzmrfrOjq5btx2Ag45kAQN207McJICmuw4wj5kuL4vHLthyJueicmDoXtRKtw
	 WqjtCm4lWeRxiQVzlM/oco0Y0lyjkfbAxSZ3TfniRI89MlbmrWCDLKu8BiPZlNIZN5
	 2uiD7WWOy5Dpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3335C7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168614232572.1444.10832047930978081049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9dc53ea07c2284bfa5047baf9ac4e4098ab3e4bcd801bd7d5b1d0da66f00ce
Date: Wed, 07 Jun 2023 12:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686142325
