Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24AFA4F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFDEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669024854;
	bh=Y34gynNs2i341d5rVL2Q6vLJfrrmyfkPQGPAfc8RaAM=;
	h=To:Subject:From:Date:From;
	b=WxylEgHMWN6dDuIumdZUM5k9Eufm3n4WwwOXGlRBuhRProD+zvkcYY8aLwN7fGCqi
	 SCI8b/AqVE4H/dMXviUCfRH+kccEpl1Q0nZoZXg+CnzC1ww7qDAmKf62v4WLpUdo48
	 T0X/PRSxGDCMSV1H6dBdzYP3paZFQcy9eoSdwd4TkunCC9yqX2sax0gPuydQiCoX0E
	 t/d2UAKF1zKUqOaNLbqXFk0IEA+JsPgrV64JOzKGdA1r3VVwnrPwGUvoQc1H4Kkyk7
	 l0iNV3IVzvZHP0PiisBJ3/V1JybQtYptI4vRVFMSa6BZorp+CH7EAvi1zhPBSskUXS
	 OftA/4Gvjy6FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509F9C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902485432.7840.11595633824963580984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23067864c59a2d6ad24151b688556db314ecddeade3252e91d0ac9af24994bd6
Date: Mon, 21 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669024854
