Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADDC160
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74993C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661645452;
	bh=TkOpnIbR5+LXo4CVc39Co2keLyf/9TL8QQ9+EM4rhs8=;
	h=To:Subject:From:Date:From;
	b=TNoDhO84/xe51DCrSFTmYqAJ4a67MJJEkEObA6+Z141MUraqMDANHLkxvRwCN7Ors
	 PrfFwiIMWUT7SOY4cWoYXAh+W6PuWB32MC68RA9PtEI+kHsr2lksX1fwYL5jq4uBlF
	 snhTcuek31bU55zwOLkEfmipX4z/lqrfNJezvSo9nng9vbZXVB83hsLOaRLnEkR2FQ
	 DjdfQm+lNwEZ6PKsbmrIFbloWuY3YUY/whS1irTXl5j/9DhyNVww058c5rfdTfWM+m
	 I+1z8iKwps4qZC96p6j+fX7arU39tvgLowKTGO9R2CeR78CcadZVBrJKZFivH6X+cF
	 S1hVC44k93l/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C399ECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 00:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164545233.20178.7758370936448717482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fefdb843fb46e3d2325e01f4b474c4c1d902b9c89fb31321e2b6e86eaf07884
Date: Sun, 28 Aug 2022 00:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661645452
