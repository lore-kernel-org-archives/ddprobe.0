Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9201190
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A91C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665541853;
	bh=nAq0AJrCzOcp/uxk4I+JeHfwExsOAL8z35XQCCXlHSA=;
	h=To:Subject:From:Date:From;
	b=VHbJVPdafDkOqMdZulh3NKo2MrGqyVlV+Kz4dCAFD769H5/mx/84JlmfPbX1IDTp1
	 dfrQ7G5GudotHEudWPS2Yiva7LAojG5Vt4b3lpO3Gbm3m6SHvM0bJ4B+Aujlq0syRi
	 B9NHdfRN0vfiiGLzpVkEZFmz6pE/Yob3zUO2p8Z7hfz3yUddlfDSZPUVfDfS/GgPEp
	 MC74TPtAW7sX4KWEwOcJOvIAouptjd/RC2sK+BdlQLKGdiP6UPRVohwa7/XhZCyOwB
	 1uIIdphINMJMyBcZAEIPfo8n4LyVYVDpdlRvGbm7MmWExXeZvkEO52EQtCECmzGGSM
	 w4pFr0ijeE6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E96C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554185334.29443.3411835615828916445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1aa30a046589347df847f25c1050707aa67e4a0c2b9c10cec64205b0c57199
Date: Wed, 12 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665541853
