Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36613FC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8413CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671401487;
	bh=1QtAeWmkf+c3jAJz2UfRoe/lpQUVGL3LKldXTkHvnXE=;
	h=To:Subject:From:Date:From;
	b=i6FAzF1eC4NFd1IMZoYxaPYAjfBQKxh0cpqfRJVvm8ltbfVFXCKjO2DWQuxGU0VRU
	 Cx++LRR2jtZ9iIuB3IxKKlZojSdMf6SI9fMnLYxK6CNDUvS6ICEmmzzBf/W3fBZklZ
	 vF0YJI4AyXkeLyrxbeKncvKyv3PduTzIvXBL5VpM+QJZEFdhf+t/zuPuHVg2qJXTQG
	 gPP1FyV/AoBnqw6ezPhnXMcdLaz5a6V0TcXHq3dhfSJAvtn6g3cgdOAh7kd0Fk7Fz6
	 5ssPAxD4RaqOfzpGlzt5iZNeWA2iM6A7G1nJzQf2OaLmoiQJG0UicPM9UFqp/eZ5YH
	 LS7YJdwpefMZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643D4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140148738.18794.14328685789912472555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fff50153b2b1ee9b658b92ac1176d19bb5616692da56305fa747a13b7cef543
Date: Sun, 18 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671401487
