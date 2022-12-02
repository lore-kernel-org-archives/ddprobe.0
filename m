Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A961C26
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB99C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670021454;
	bh=W1TNs8DvL4cNqHMycgkhHi4QWYG2+HFSYBQCzlpWhks=;
	h=To:Subject:From:Date:From;
	b=vIkajW1APEt9BihJqtBTl4UVggr8Qffkhp8garvkvNbWo8wntY52dmVeZ77CddI8V
	 i90CKTWx6PCOyrpyNovESLFFXmK8wrpP06UdSPGmTWlDKpO5/erAWx5V4+kxCH5LFW
	 oe+mQxUCnCeaGi/dVribrjQUDWNz53eh6yjjcdgkSK2ZLDXGWbj9s36yDT2/RG0sG5
	 8kdm6CFysiYj9H9CHg4oJbvDtGMI2CXXgq2SFQbblgypfH40dIQAgzkfkSDdIHtkjo
	 2oIMD2PCcKDPNBlAFKtFXXB3XOPLnXAIABNrdk73hqvyMwoI3mKrAzlZCrVZqMueiJ
	 isDZLbyFXc1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5404EC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002145432.13799.13364216569660793188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c2c110adf43cf4e240b163d60ae77cf04b4b114d66057a526177b2b8eda9f6
Date: Fri, 02 Dec 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670021454
