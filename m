Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620D837144
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C758DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695161108;
	bh=6Qm6V7UQp5kTEnbrIYaTg8SPenxGVenC3d1M16PNFpw=;
	h=To:Subject:From:Date:From;
	b=GWKD8SSzfP1Z/eQOuf64UvW9UVLdIt2GGs76Ic9TSu31Q9YtGOY3SHZjWPtav3B6A
	 Jtq5PA+jnhU0RENSJ78vLD8vjx73Rd9sYd1+mC+Qf4vPzzE5DPKGwyPaWkSV/5xBRN
	 pp64VdUXURZ0oo8vRrGL1fdve3vl4hmxFxRUQak7FoQbn5okil9TesXPNoZlOwPhOE
	 Hs6GURithjdYT/BxeFEOBdNFbQNUmEsqXG+odQmjDBZUWyqKagHA/2sVgz5l/hIius
	 Z8NEFGQnLXjzNTqxY3NYrhThKU0DqIKGpNa5wSONhYUddD2q14+DcqYV/IuR6llcHH
	 ObGxWodfIgSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DCCCE79AA
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169516110866.17562.3836415212541291593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b01693d2cc407d5debaa882fc3ec8f44e84d43563b66ceec6103d95bf06c2f
Date: Tue, 19 Sep 2023 22:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695161108
