Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302B6AAD
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B5FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679059265;
	bh=TfbbleiF1DlWifKOzW+RRb/QgDzPnjV3U/CDJovclKg=;
	h=To:Subject:From:Date:From;
	b=ugcopfo9XdSusNJTYf/93+Cp4UM1B2t5M+S0ynEtB1+Btxyk+J/+Oz2jRrOccYcbf
	 EawiHhnVX2UiUi2thne8Us3xmtuApWQZ/UslsYyyqsToPt3veM4uIZl5CIvJoe/qyO
	 Ffl+qZXMbBoIZiMK13sBpGH6ye97YZFS9OWieljjBy17yxxNp26ystYAGyizL3ZqDf
	 w5Y3B/75BI/rlTZTE4+ubOFsoXOa+Hll4gVl8VTR+sCJZNwOHnLRA84kSQ9sOsXom2
	 k6f76k3UIGEUuz4Bh3CcfyIB3GHVitnDuW7mS82Yvgyy9K/WQue3TIddphy1XY9HKH
	 Lhx4BpmPlKb8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B4AC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 13:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167905926574.4076.8176674622787312993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7837215fff128f8f546e551eadea16516ff6b4ebf78da61281212c03421a221
Date: Fri, 17 Mar 2023 13:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679059265
