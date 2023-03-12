Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B641C30
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 10:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83FBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 10:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678616165;
	bh=q3sF1yACCMHX0x0UCWffmH8i42Nmp1Jyd/CoO8Ocs9w=;
	h=To:Subject:From:Date:From;
	b=qUyF2PFfXsnbjTt7NbWCcDiSjCo53LeSRGdeLV/ZvwJhIH3zNnX3n1vJniMbSjUMW
	 SiEqqHyTYKSUQlAV/DUF9Pi0wIi/M08x9b++5H8TnpjdWMSO6EQYWd+MKDTPRhbBUJ
	 F24Vsz/nCY22i73vLMfU0ZFR3vAJ6zaeMDaYnISOzE8P2kuAMudAgu4PVCz+Odbqjj
	 XAI36mCmi/N4Hq3ACTvz8eaUD9Qcm1TcH777rr4z2eV6UFS2yc/837SoEidkDEtsb/
	 Mb0WqnHl9u4YZ1uj6u4XHEkqGNUZfscNu3zQWyNv0QcH/+BxTfG6xcF40YGfaFysF9
	 X1iGawwR5d+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC537C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 10:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167861616575.15425.3813909236468603924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a864d9c75ec8340b9989be7c78ed38680dbeea13f5b3fcac3115003764a2dc8
Date: Sun, 12 Mar 2023 10:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678616165
