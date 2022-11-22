Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0471229D
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B5CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669146654;
	bh=d7Ol0UkTQO5hjCFabLLUeic5EkMPi79r3YVBIf9xCd4=;
	h=To:Subject:From:Date:From;
	b=odfvZlkeHomuxprGCu4XXzzf4UVf0zsAPt4iDZJtNCYaPx1r7W2M8gC7a9fp5HPi3
	 X3durMz31Wijts2vtDBRorq5PQoJHyohTCaO0jFI2iI12gatuU7JXzeZ4pnc4LOwGv
	 25JxOCo2rOJJhgimdePgwOPc1bfWksitwWgFMQAKhRN59wekUAmUK63dB8pTOQBOf5
	 k2UmQ7HyQhi71DjapNu5OEEFDAotltqU6vD7pWrHIKGIb+fKoXOmGLPXYaTWyN17tE
	 I2PWKObeeuTnmk04m+6YmuUjJROOIOCgz/gHzAaT4vWasbax345/W23X56l9zPbJJ7
	 a7kkY6hAAP+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7462BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914665446.6742.13250027866855380861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041cd7869b5444a1b1c532a0370a2db4526f5f3103f829cbdb00102128a5e154
Date: Tue, 22 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669146654
