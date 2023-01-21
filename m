Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B44643
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E541EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674291725;
	bh=VRzsk/0fzdZHK4OCuvYcFHwEb5Z5+BOgPsA0ZHKWqsg=;
	h=To:Subject:From:Date:From;
	b=bOc9dd8Cn8CUPEyeZ2RU8SvnWy3nsjHBKrodMhLldXqRHiC7LFiA+gbt7xrc0kFN3
	 0BzFbFVzqBk+0gIWV+M4X4WnOxKxdFY0ce+stSN+w/ZQo6D/f8CYLMbkn30cGi+EtR
	 wvTbR9MuvY755TXVtCfZA8KusCeKo9z6AgcC0qnmd60K1fNOvxE3p3UWIjd6w1x5fp
	 Lf2Qv3U36HDK8tziy+glRIC2FxMuIVHRYEb26QLmTchpKvkPf+03+wKNZxEPqscfYt
	 vVuYzlqf9xUWneGPIIz3b6KpOJNnXCGjWbVuF203aqqql5G33UT3typywtie0ZTbmi
	 cXV930mNdjiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB406C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429172580.21499.16556733049506425980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2487b5b0c3037312521e50fc4913deccec46daf32463de57ef9079738233484
Date: Sat, 21 Jan 2023 09:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674291725
