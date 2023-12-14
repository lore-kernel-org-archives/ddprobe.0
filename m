Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF78724A11
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1ErFRod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78CD2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702573096;
	bh=TWpXdMWrPEpelqE+UUDJWivJ6o3ZmL/EiCRqgT0dow4=;
	h=To:Subject:From:Date:From;
	b=m1ErFRod2KvkNErBS7D/52SdYDJBj/10FqBHyveQWKLITiMG2VaRzVZBgHFG7MU6I
	 +ihJLbz79s5JsKEosJAAKeMLPhtez5qSZLnSnbZFnUrNJTDInX9Ln7ygwSwGljKz0A
	 yTQD6oimQOt7d7dfUWwa+eEwvQyVRTpNiT8kAn1wOcptbUG5V1Y5EK9SwaNCez9ASG
	 1WrjqXtwkvwj0uzmT5484BOB5NHKDek0qBNT7nyz9ut76TI2waQiAjA1KzaFs+S1TP
	 pmjS63SHVcNKM/i9A+c8DAwfH1a4wB+Epo2FoBitcbv8BNwURIIzK39lQPKBmfrWjh
	 oNmnZIqnY756g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A37C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170257309638.8168.5828415329443033410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455d51671bffffbd0d9d92e22ec1659f45dc09b726bb6938ea4e266bd3c33d97
Date: Thu, 14 Dec 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702573096
