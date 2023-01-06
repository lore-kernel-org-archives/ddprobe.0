Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B877E8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83293C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673031687;
	bh=hnQjCul7VuEwRIW5Ta3KzlmfIQnHUrqOrWf8is1rX9s=;
	h=To:Subject:From:Date:From;
	b=jAyVKOh99SSkR4WOfYJT3XEwblw7xd7ILIPH8WXATPmm4E3stBPFgopnyrQFKJ8uo
	 djpB5pjvXHjxNNHyG+F9ydu+6nidNmYag2Nr69ZrEzF5QZXVF4ZRhLCuirYji/umJb
	 ucVQ/+T8jfjrgNdvPL2DjHLlpGa9BGiaZdkGdXYPdRL4rxhzxbZxmQWw4871JusyjC
	 PT0s4eLZ6xZEoXsHGuKfrVITeNkqLdBSgTFVWVC1KjgMofzkBi2fjsLEOHvu1C1/e1
	 /0EDu6YoH6HYp2cL9LWkwvZDuWR3pEYO2o15RD5+voCgRtLf35JjZYdQE3Zt7AKo9D
	 jtRpiOUTfEvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64726C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303168740.12278.9173765124979801147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053382d06d8e33dee3adf4e278fe7586bc4ec4e400b59ac6f59f0e54ca573244
Date: Fri, 06 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673031687
