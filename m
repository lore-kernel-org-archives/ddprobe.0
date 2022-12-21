Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0CB15A6
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87328C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671611487;
	bh=0FHaM4KWaa8NbHGT3FUleRtBLMrQKsAE/EIixTDx2/U=;
	h=To:Subject:From:Date:From;
	b=PWyYWENVrWB3zHsxM6CR2Z27+BGwWhUxqT9xLYU0SwFAXgbfkh667Qco/2HRYrn20
	 1rYNqnG/Sse6f/4F6td6J4/qhyqJsmVekiJsfZwCmfHBSOAw4JGJu22YvOhYapEmkB
	 NXGcytpKofiDGHW7vFvxARjSpVswMMyRgxQo4ry4iEj7CxpPxmovyOtOXpL9w/kYy5
	 CFnOb8SpVCwJmdpwKFCgY+WcFBUWVM0LMQRA6LzyeLYxE4x/OvBqpPKg1oazDyQ3V6
	 tSSq7kzsplsk+7l7vEs7IRW4VXnpeelvGKJ6haYSFxnbbPpsIQ85lvvbUs/rstdAiC
	 vVCyTktRkJMlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B968C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161148742.18706.15578627034368725730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2892764f32be58d298cf4fccf5bd2e8cd7c6701c97e230474ca9809ec4d2e5
Date: Wed, 21 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671611487
