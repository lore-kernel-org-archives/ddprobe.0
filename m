Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC77D184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B35EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663283453;
	bh=Rm+QhJSlQZQ/Vn24yTHI3bJEPeXsTB+7G5OOEKiadkM=;
	h=To:Subject:From:Date:From;
	b=jdyVexLec0VaTyS1MHqrnVsZwr+jMghsJWxRiTtknpwK6glv4FXTKqT8KurRPVQ/1
	 uwCXLyKp25Z9HzmFkvsl2rL7ejk4GAJx5iwOOnz8QQC4raGPbYGdJ9aC0khcCMCBQG
	 pZxnZ0uKnFLjygPMw/P5Q/jJV3jVgqotGYi5vjw/EAGcVIExrkxDvP17WKU0O6QUNS
	 SZETOmK/Og2ApSRlbjrlvuSre8uoqmNNjLWdJSCAvBwnDKm8FDr5iPdF7j731BTG4F
	 M9u/RrWfJNFQZ9D7TEar6aGZCRpbC9DRioTDSNlyM0oQ5BG0uIqEinM+M/pn1Iti3k
	 qLZGJMXdty+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D64ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328345333.14471.11669316773622550748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0bb1d7c01120d369a89fb093b21b758ed68ab22698e498651268ff6ca6f4ed
Date: Thu, 15 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663283453
