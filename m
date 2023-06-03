Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B0BC2E3
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9B5C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685806685;
	bh=UXHoVy8GlIgUMVA85g+UaYmZXrPBiaDQioqgCblxjio=;
	h=To:Subject:From:Date:From;
	b=sDRHe5yNQUZMhL2sMXnogUfDM1xp+K1QHlf0UPoA4uw/VVGwD+N77W9EZXE6MSO7P
	 Git++5DLmgoLspbNCxCGMWnfR5paZMGpTC6DbsVP67hjCVwe+NuXfLUu98+069upQo
	 vImgyT643uuqB08TLlTb7sCGbmfS2nvDPF4EF4H3YWDxPhQFb+woJlDRsyUzrCxL7S
	 mknlvmgqDrvPDoHz20XxQqbRXZjGieZhh/LzfoXpFkflWT2q23w5dlh93lobvV2zY3
	 qb/mHtld8HHnkI3xIov/rDFcI9fCyiPLZ1OdWty6FU5cz7yhcMA655VY/cz2ErankW
	 JHC1G3xLDCMQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE3CC77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 15:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168580668575.12748.2746106645063525910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b032aa1a4f32d1de42702d051faffc870842075fa8617d1697d8743126bb958
Date: Sat, 03 Jun 2023 15:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685806685
