Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08017F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95826C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670981487;
	bh=zXYgls5hktzCu0jtlZvG3gq0k5ZiwfQvXDVKLJy3A/I=;
	h=To:Subject:From:Date:From;
	b=rK2N9l+ZfNxowjIqDbUyz5WvEz5Ea6eHZOn3/CDLS3wYSti/GDx/RusAvncUfK+uh
	 HRRvVdtWpN7RKFQ8zJhjYt2EN73i7+amEM4WduYSavZK0WMIAgCmRpgwXo7Bgyd0lY
	 +BaoHdEo3pPUng8mw5/TGfXQbCqJrkMfGQvARtmBEsjp+oGg02Obxvd4a1Ws8oqtaw
	 w5O1aszv/p0xlxtHpc+HrjMncl5mv2qJaX7kHe4xchc/4b+4W/5067yjZfwOFs7xjd
	 maCHpxie7v0IJEGjXA9SkL5kIcUn3JxU8VgEY4uxWw1Vdr1N9qBclu1lhWsl8qTw1E
	 BbO+IHTqRzk6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E73C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098148741.4990.3026192129001714779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ec5272aa4d1d19ab9101f80ade9adee3c0fe7294d83842b0f09845ca4f8654
Date: Wed, 14 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670981487
