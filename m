Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15B4A921
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8377EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673367087;
	bh=I9AedeNXFfFAnTVab22wdKqvGLS2B5th8YUo5lYBCWY=;
	h=To:Subject:From:Date:From;
	b=jpR6VhLlUoH38HDLhReymijmnucFP9SFVlinNJc8qgceVjKD2eCLYsINOcTw0n7+t
	 4hi5guTJsOclslbXvtIdfPIoimBO2nTrb+3e+xqDotiYDwJOtlbRzLa1eDYYPN6nQz
	 cDUnNS5MbunRmarBtkgOeHMwKecqeC5Bxq4qB6JxzbiLhBbXFkPzTJc2jK2s5hGRuO
	 vnN7/pk/XHDK+Yvi0qRnVqUKqpOAa+hX7OzM0hT9uFr7RgYAWsyEBWJPXMzleVUp41
	 ByJ+dtfIlLcqscCPihLHwGPtAW03UhzaXEYGpREJAF2ocUBYbGSi8C+/ldyYOxLR3/
	 dGWydaUlyqqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671CEC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336708741.20352.1735425947218733737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbce43e068bea0d0cf0a1d511c5ecfb5474cb02cf1528b9d1aa62e8e47cd3ecb
Date: Tue, 10 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673367087
