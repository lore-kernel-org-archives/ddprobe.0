Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932F76ADB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 16:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B916C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 16:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680883806;
	bh=V4Vj59ocwQ5Im6XaSUuASz/+FaopqKMhoov7nI29CLw=;
	h=To:Subject:From:Date:From;
	b=pAzPXvv6uNiocejEXQBmZzcpp4Bd3tSi7efzHetFPTqFon9OPoDQc3HTI4Z5iMvhZ
	 Wfsm7iVB2PVDysB/0ii/m7zj+sTxWdnKJwoGcO6yI0d2vBvoJXgqUchsLKVpzqa1vq
	 eyQvz8scP4d3F/hpzwfWjoMcCA0Krose6LcXeBHxjJE1Y+SHQ/wfspiyR4gBqJdMMc
	 v8CeKDbAIPLv7CPH/cnh0qSZyGEZTezhdRIH6syWMX+5Tas1+N7Dw5v09kNYlqgRwP
	 s0RV8SJF83xdI/OCKaben7Kj+PnakOogmQ2ptC7zG/Ax1TuyLP9kXNV2co5jcu1/eV
	 dQ4r9A4/isU7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C2A5C77B61
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 16:10:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168088380607.19939.3135916179795901339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0cd96cc3387d85be09abffcce846f8ecb1941bcb034f42b646fc896912bdc0
Date: Fri, 07 Apr 2023 16:10:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680883806
