Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDAB5241
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKupr4pV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D249C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699925296;
	bh=k4mPpCr4gm79daQG+RuAAhElXUaTRRzEP9KP651YSc0=;
	h=To:Subject:From:Date:From;
	b=PKupr4pVWxWIgiTCMl8ltBwGxrJ01McatLlIWy5Xg/L5nitTomYADJDJvUBz1yUfK
	 pmx+yFv9lpi++IWfiHZM6vtglOSqGZ+YZmBCD926sBSqhTmhflOvcOsnt1XbfdeEno
	 NI2+ND0VwzpTX/I+y/gIsANiHORE9q2P7fK2R4LKPdkOCr34W/2CxZM11f64tzyWDS
	 uS5M1yEglddQbJlDfJateCDlmgozPJsyBQtrFeh4AQDOaZpa7DXOCqcF+K3l1rbH1d
	 RdM1SltOgPw7dzH8KVEZ0jBbqsSa0gT0SXMGPTTgkMRyNc0wKGZDK5HkqwAM/Fev+w
	 m0bxIM8iGvQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D19C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992529641.14213.12186081722108498310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04829bb211561f65828ceec3bdb16f26414476d144569767fb9d2879f091ea49
Date: Tue, 14 Nov 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699925296
