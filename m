Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A6BDDA0
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJdzQLmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843C9C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699433896;
	bh=ZvzcjPmPA1jRsF29rIM8smI/MVAH+5DEN5BJ6vz2GEQ=;
	h=To:Subject:From:Date:From;
	b=rJdzQLmxxhiMq6e+vEECEPEyjalGD+TLApOidhXy9LXMd3buLJG7jDLxaTpDAzpeg
	 CROhXjtc35zg1Z0GNJOQCk3qCc3eSqhNtEVXCXDRZwO4wLFxAK4D5d13iDkQiYK+RE
	 zcVea28pNzAR315qW9iD7AkdQrDmJbyAV0/+fNe7JjkeQcD9klvdpWnwZ8fuoa1Rfn
	 m3NVlPAV9RJnkgi3wEbzQTe0kYeZwUkwMImnIcaEgoZdM0GQvIV2RLaYOvtLqUrhZ5
	 BRD2gnYEkwbpiHCYjRjpmWffpl98cD4KVxMQ91NHErnFc6M5eQoOHDjd+/i8asEP2x
	 4tLvrKrrZCF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64654C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943389640.16355.18071292848796403217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45151c755e979721f5084673b52d93b8daab83c8720028110727c5514661515a
Date: Wed, 08 Nov 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699433896
