Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D191B8BE9
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C70C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673718687;
	bh=pOB4bSrwhIh+tRD4N7pdqcDhLYAHVp1W5HjzmxZXpXQ=;
	h=To:Subject:From:Date:From;
	b=Ja99xviHhhll9wziTeG1yoOE1KdWk6qFhdy8JdPE1ayPEKN/QHNP1PXMLJU9yWd4m
	 TVVWzrBNRg+5zTiKiWZNKuMyTAYpHQrSQjmfQDxQJy+OTvOc/pi/y4cwblg37DNnza
	 eP/3ZgHdNOsz3IctOKzdVwg5YU9CL8ndPuASliL10H1Iq8JkbBUaXhFXvpq9fEs5GZ
	 EjrEgVYSW8a8MtsWTODftHiEIuciyYRnJveY5r8Z/QDnFu5XmvJDq7Olf3GxBiI7gw
	 SlcPmB/4uzGDgSCVLCgLoDR3la/nMVVwQq6MKmn3Hzu4AzUH2HoTuqdJ19hr7rmEAr
	 3PDZR7K/zmDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E55AC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371868737.24552.14549687732792374381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70915c19ca2fdffd7faaac805d4d94f8c5e81e83e1e5cd8a51b791179bb1c808
Date: Sat, 14 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673718687
