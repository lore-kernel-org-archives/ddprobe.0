Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE66B368
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A5DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668193854;
	bh=vlLlSVhf98PwhPsGhwVXf+UNvdin+GRehDOAP0frDeE=;
	h=To:Subject:From:Date:From;
	b=FUbV0/ftDZrBsDWAtWjMaYAWhZO50ZcB+BXX61GG1+GB7UOabB92aNzZAWcimcaoE
	 tg+JBHPInu/drZs5814sNgMQxOrDvwrNzyX8xgMpzjVYKw2nTUP7ZdRotcrz51fJ5o
	 4dD2VC4vhU9JR/Zo6A62L2SxLJfUu8K5nbHHIw88RbOnjEPr44oO3Va2kkPph2AO5y
	 h+vBw52mfXu1xUIy5qxsTOBmdnckzPBexenxBYHEuQ4FFuOLmIVtZvJy+VCknbjQWk
	 9Y2RsRefPXbY6071VH/gO+CntnXZz+KhOTs7VWBLInGI34zFe/zfUlwkSyXv0ZjmH9
	 UijlJRqFKbArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534C2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819385433.15822.12445747548931898664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a43fbf21f17bfce35e07a5f6bcbf59b8e156fd50c5d1c41bb91fad69b05cb11
Date: Fri, 11 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668193854
