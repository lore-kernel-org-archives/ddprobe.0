Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD6617C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACC1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667023254;
	bh=rjDIHrvMuI7ZV/QKBZURbmF4wChDXoVAOpM/Ky4xqbk=;
	h=To:Subject:From:Date:From;
	b=OUbxhkZVd2l8eGrUnwK/8XdnPSz9tudEqVmm50oYNkOjkTtljXVkC7k7ujR16/GsQ
	 Ll7rd+CVazrGUXGf8GTyo+N6EwJ1snawRyhsacAnQL6X7OTTCo5jrWipGUqHLQnI1P
	 Ce/hRasKDHHb2/+Kz5s3309xri+y91OsvvEiXZValTIIIhqJ1j/n/tVTZl0BSwmsMh
	 x3vFy6w4NTxKS7+zRaxgIJF6w559IC7GAc84IqiOxhAYPKngz7Un6sAwL3LxzUxzSu
	 17np6/U22iffJJNkIYVC6gTq+syc6zgOCGyPNavTCy2UFhbK1tRXQmEQGW8VIdZsHE
	 In/uixfgsZFGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F8DC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702325432.10495.13631299550322928374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad1f0333a3ec7083d40a45a63ca2e3614a4b8fdf60b9f32934a216ce9232491
Date: Sat, 29 Oct 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667023254
