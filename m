Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902AF6AB4
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 14:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15448C433A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 14:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681394826;
	bh=oqi5hXXpt/R3VQEETdf14gs35vR2+3Rp8+XdMXMdEw0=;
	h=To:Subject:From:Date:From;
	b=RXZIJHV3CCiLepLTaeIlg8xQBizplgMxnmn8cY49w4LvtshVQym1rGq2vnAQF+EvC
	 HfyEbPEQdSI39bKB6blEe8wYqt8qIqXvT5nDg/DmpmDl7IwgKvsqyU4UlkDKY6K9c7
	 4SY0FHBN+sq0RApfQ9FYCqtzCNqVVMIm0eGjbBb6V9Dyf1vWXwM2Q12DyUjHpJpqaJ
	 Yhq6TA2rsX15eMmctocjlkVyaJ3yOl7lWdN8y+dCiDWPaGJLJn9HfQser1P7czP0X9
	 uVyHdZwvccvEUA3YBRxxOcfphHTy5+61nXtNSX3ZkYx2EWfpxk99T3RI8Yvx4oJbNY
	 yLsb09eN0q7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D172BC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 14:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168139482584.13939.17861258102595628885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a459e3837aceeb6cc11af034f2fb89021eb3a1aa8ab4ce7296cf01c511c6fc
Date: Thu, 13 Apr 2023 14:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681394825
