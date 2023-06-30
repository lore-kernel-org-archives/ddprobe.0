Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2E279E6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0250C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688122388;
	bh=kZWTQQhEWDIKVzYhHRCv3V1g9I7NejSDylleuqefiIM=;
	h=To:Subject:From:Date:From;
	b=qArf2UtPYs527sTNCCh2cM0nrWjGOZMT4T27f+PHkgznHssmKvDGWpsaYBfq024UQ
	 TdZ93MQKliJy/7mGlyoYfI7JY7iugDj99v4sWx5794erDBC70P8uWbm40q5rdr8JjI
	 M0wD4lOdb4v4srH5PEbHs9k5ma3t7BMiDmW4oSePg9P8EdbXg7LoAuy+K7myw3Nu2/
	 PBeuE58hD73BHQHRnX5ep0BpDLfR+XPCN0i9dfrLn4ac4dB6OWK45jtpEK87p18uEj
	 9S9Ei4w5/QQjDPKrdOV49ugqFNPpqWKhCrlX4leeqJ+ggDLZbDDXHiiSqSw0ZzOZhm
	 oZpbxFqPyWPqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A678EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812238867.3675.3924765692961679287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd6de49f74ea24e97159f97378d316e794a73aec938603643d9d79df4aa9fca
Date: Fri, 30 Jun 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688122388
