Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B5B847C
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otPH0JuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DE4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699793896;
	bh=yoQP33HYp/T/eRdIzzMIKxsLi0ridYzTxvpluoQTFQ8=;
	h=To:Subject:From:Date:From;
	b=otPH0JuM2T2S5grDcoivZMCaVovtmBcQi0OrKFpa261VWLGOQXPyKrBRPrub541xn
	 IzXiZ2rYjJ8+CccXC6VTNh+CDOQCmXU7I9ePKjVHvZse2vhVnBfyygBp/ywHYMJ+O6
	 epd7AQq7oxsekWYuEyeHmhaiNt2G1ub9q/KgqNW2Hpaf4F3g2mpChqV/4kw1yAJF5o
	 HGAC1F5iJo2+j9esnH/fDQ3F551+uRjyqlRzyqU6JDvy0i9AY/OlbnxhFJ67OwgZYM
	 mtkkYr+D0ERs+7TVEI/5GgbAnqeqafyocMpJRVnpHXp1WCLvZaKvmmUd7A8Y82EwSO
	 TQm3hZUs3JggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61277C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169979389639.20635.12477580434606331608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f00536e30daede6e24d969ff760dc6cfda0550106f181f0ee280fd7b7cfa1b5
Date: Sun, 12 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699793896
