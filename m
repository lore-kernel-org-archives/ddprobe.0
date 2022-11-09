Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF980257B
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755B9C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667979654;
	bh=j9JMNWClNLARYKYiLZ/IrfbwiOOW3R7ypO4oafym/FU=;
	h=To:Subject:From:Date:From;
	b=bbUdjEHTUbcuoc3R3qdB+8I2yChKVBna6C4cKhXvQ+rzz8urmJZGSStY8/ytvnG25
	 k7KDExuOrcUlwxcI0GxfddEhD3GtGflbdk0DFvdmrcl62azAtmB5AlJftqdYuezeen
	 IXWHtS6qn0Y90aweRQ8wXxs6K0GaXmdwP76QVsBXC6bMI2Zt+c2dW8PTlBrGMk0+EG
	 Tasart6kOfTLnrCRjf2vvv84uytFbq/uXWMQWGyx+AJaj5v23KsSBnC1WFGI5SX0d9
	 g4Ggbel930phQ4BzMFj0CpEv82fO5JXCRxGN3KLQIc8G1CzjbGCIIAilJ3Bme9O9Wi
	 fv3+fZHhBTalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0CDC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797965437.8787.6472240078895201827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd8c41dfdb4c6f2c641dac7161291b20aac67ce50a6b79e3dd2c89a8849405c
Date: Wed, 09 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667979654
