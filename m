Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1125C13AC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9zJ8ja3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D798C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699523896;
	bh=8Bfp7Av+sc6Z9lF7F12UYHcMN1DDJ/nhp1EVXHJqoYg=;
	h=To:Subject:From:Date:From;
	b=c9zJ8ja3bHOrIShcCAAI6FzhQeZkEabLpwI07oZB+JXpI7UE+KOzESujV8nAviyNL
	 oJWtS1fPhi0HTRwNK6dPPJGIJg8g8M3BlVVO3fpCB6eIUEfgZJwgDYDcAtCZ110mXn
	 HdhPDBpuadQCv9ISuI6BZzfg8giK3Rjabzm1dmRH7p78AoE9iEwQjeINKtQif0IrKE
	 1+C7KPf+W9ylxSBEp8X8sLGdiD7Izp/IHk6R2qZgA1QRXBrj/KI8XnReo4PtEoFFCf
	 FaFKZgC86ZoAEPxMcxDcd1BJNGQsf1EGy9JBfQUnilhQt092i6fdjuSR83V7vkDFO0
	 gmleohr4/R9PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB44C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169952389642.505.6288502802062392422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eed1ad9cad52196b7fb58d4f7f4123ee6558f77d259dd2629bac0dd518a3c1b
Date: Thu, 09 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699523896
