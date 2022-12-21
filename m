Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDACC1FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783CBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671615687;
	bh=T8FXDpgh7zEWm2vm8QYKYZfRsSJ4eU9xBQE/B24Wa6s=;
	h=To:Subject:From:Date:From;
	b=O/hsJqUkxahpmfLsHZj1qo/qcA8wv90bo8MM2DZGg0wJ2AaU5CZeV6yFmEOHlOrBQ
	 VnJQnTnUge1v06Y4Jyl8JhXPPvsjsN45Zwl6e98hqEgU0ujQihMM/pRqJBDlKfbZBv
	 ypd0lgNa3q5M7EHf5P1nQqJlYBk6lVpkDuR+3sfGzF7sGnhPSZqLzwsxd0AJ1sfZiz
	 MRyBl5x1ywR1M50pSNJyAvRNO/g7RZhi87RPWmIBHSNNPHUv2zv7GoSOoEMVKFcyVy
	 HrzASFjeMeXKThXi57bywMLcaKzG7zoxk9GAa1s+XS2SJO20ICWPogNR6vpkojPJWq
	 Wo/b5/Uu5cjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D814C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161568737.18642.10529500263662066318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd3f54292e53926e19001b457da19dc25eca87d59cf87c27f76d7e8731b6af8
Date: Wed, 21 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671615687
