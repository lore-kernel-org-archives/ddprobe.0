Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660F6100AA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 09:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0A9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 09:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689154748;
	bh=hFyvlTxy2KtVcNPoaSSUMYza3U3245XD68f4y16+++w=;
	h=To:Subject:From:Date:From;
	b=YT4aMen/pXWlgb+LZtHcHArIN8BWxpujfqvTAkPPk7BnB8eae6F6AVQF1ug5av5D4
	 H9QdxaGuOb9AKH1cP1IEWXZYv80tNwqgPnJs+sIAid+WJdQ+e5LROTMV8n60E2Zd5y
	 AjzUyEnLowuRHa4ufkxGa9s5jwpfzRm95voSSOXFSYGIsDdv5Sz3oUeHg93aODTfsI
	 vNQGCeMN8VJmRT2fnsdEvfY8MRAdDPueevpFZxCd2qdB7WqJxdlRs3wFM+WHBtShP3
	 54hnvc7mD+V75aQ2b41VmC30QD+uicTD+OnpV0D5Cv1a57XhOql1P3V8CUmAHCOg0R
	 lg37WEyRzGDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC30EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 09:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168915474870.21199.10142874860876193670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f680e4b04e18930766aacbb8be793c48f43837ee83c20f52f9780c9d3c85cfdf
Date: Wed, 12 Jul 2023 09:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689154748
