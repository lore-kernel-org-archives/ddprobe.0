Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96CE7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C04EC433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672984287;
	bh=oA1oSlJf/2h1kKO2UG07ryK9INj6/9tV73paC9W1OiQ=;
	h=To:Subject:From:Date:From;
	b=dN9nHQWg291uiYmMI7z4ENhL9K7Xg9whKCID7s+mWaFoiE5nMVxS0Zl71B00xE6Ks
	 X0lc4W499YNjqLd/d8bMq/EQvF6zqCJ6p+RBAi3qo71nNEMm71kcBEpv0Zd7RKG2RK
	 Dtb3I0HoI2i3d3A8STz2y8E1yYRong+pqQmhQXNuahAMQHPJUxYqjS+4bVcEhRAWNG
	 Z2FrrNOHTnTknLgrSuhjcibzC6YRRDw04/br7/Hz4A7qPHmB/Os4wvd52ic3I1zF95
	 yx0PaOwlRPh/GKrXo/PVzFuZHozyrIIJ0odx9CMOYffqgWNDSO2SFnRz8GOfFomJ3l
	 28VL81Gw0rG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FA11C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298428747.30433.11551696497408572930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909d0503b0a3b2286b9d70ca36265cb9855a690dc3cc7409404b3523337c6c2a
Date: Fri, 06 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672984287
