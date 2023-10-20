Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109BF15E9A
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wvadvl/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D700C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697797096;
	bh=JJg78kshJ/fAJlYthnESGz8dnK32XJoxJ+7ZSP94TqI=;
	h=To:Subject:From:Date:From;
	b=Wvadvl/C+TrrK36g2ysTbAxRzdMyfJtMFcocDJfiRH30lYTVIkVAXvAAMENMmuVkA
	 S4p0Qe1JZuvK5eOqNa3y3o72zgfKOAScBbg4OaDoC39AhYR43OL+hZzpwA7e58aMtZ
	 0f4bNvZZjcgQcL8KdY08YYAoqj4cyOGWj2WAKaEYPOQwQfOP717m78Z5lLuUZWZVnJ
	 sXwEL+KqdP6NYZ5Sa0tvG9Iiw0l48Rxuyac+Ad5bXJVgGaHDr9p3qEw2KDnMYWM2zA
	 kLkNX9fxwIjIyePdGUAMz5d0qJ2oPHgyTB7Jjh8eXeKTKmncjvGDx2zHIl2Yk2vvcC
	 denKvUbn7Zhiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5CECDB47E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779709643.31578.10660394998472481903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923a5248f10e34bbf03121f5f909a4c81397b54cffaba5278b64fe82d655cb5f
Date: Fri, 20 Oct 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697797096
