Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E6D8C1E
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12938C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 19:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680292386;
	bh=kMLahG785+LWh++hGj6wEbr+2Jv40iM8H+19psOPEkA=;
	h=To:Subject:From:Date:From;
	b=ekFyLIOcBRIHowEhBFMcV+hCHpykRx5G79L8HYijwvLdelQxXbvXcW0IVmq4tPADh
	 nw0/QxcY51CTFvw3ZDHC/5pQR73rj4Kf1EmhNKBHPUlTjjMYjt6OzzK+K/nrmKz8a5
	 0LQUJ/CbZ/hUx0CcFqxq38Rv6z54TURZZQU+UEzRaW2SukHODvOq7gc8LaPHaQjVZu
	 vMcm5IQTEDnn8570Aw2Dx+2WjXGhuDtd41NXmKtpfT+xr/gScztgheX7KpyzZ9N6fm
	 k4CP4gUx1uPvDOeIQL+UaW4xVn0LUfJe/xk/ACcoIaMbmThB2ChX4YoWKZrQut5o5P
	 C64Ss42PyXOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2C8C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168029238581.27361.9005981569996140051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324d74d16a2b213eee215ea05b843eddfb312e05282ba93a27364cd39110bb26
Date: Fri, 31 Mar 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680292385
