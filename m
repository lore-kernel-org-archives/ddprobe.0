Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8687C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30EE7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681472526;
	bh=oeK+DOAUj+rV3Yoh7woNdmTh53YI5iRU9CD1K1PxBsQ=;
	h=To:Subject:From:Date:From;
	b=vC2f1yFfL+fHUI5ti34pOnVLntnF/M+kS2+0o3XQmvbR2eMLBidXDxD9uNg6YXIKr
	 /LCUYG96rJj1vo33Cpw5JvrJJlSH7q0Dvlh7TEBzk9EqdzfMbQkkNMNRlhOPNaQCjF
	 bc8EhzkcGTMgV0Ki01c02wXz+/iS2oMZrVMCA+1k+nQHWxetHjp/wohntd2UXA3WvP
	 mzrupBGYMHuu+UMJkSLkbZKO3pH35iFhdLT858pn9wzJAqzDeicIEXeN0m50/D3OZC
	 NXvFfanOJUwnQNEMqwj2/6QKGGeemotGL19dg3AUsLMq9DoOmfToIh9M/yIKr7/kdS
	 a/5w2QH6JkTGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11A60C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 11:42:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168147252606.10452.843256932363451648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78422fbb99916bea01306a55115c24f89699fddd5386ec51079e0cd8973b7a2
Date: Fri, 14 Apr 2023 11:42:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681472526
