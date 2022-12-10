Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA07185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEDDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670685087;
	bh=x43x7QPpT7wHzwFoWNlS+dYcXTxAAe5JHJX+hk2e/TA=;
	h=To:Subject:From:Date:From;
	b=s4zfI1o2vd+iG8RtumqZ2NpKhI2A3SBTlrfBZBwFdgZlGYbz6guAVLojWSKI0Yz4J
	 ZD4kXX4PtlajBrSWI1gBUrKQqCyXie3uR/3re9qMEP6HbyjhDC+r2CkPHKcIZKLQ7M
	 +x2vWsxlcWA3XY94xo3LKjZXXTdS5IO5UBRoUVDvoZwKN+waOZ3D8eShXcJr0lEVBP
	 /lM6CKMKYdHr3DK/0sU9ItZsP8Y/DQEOyKH+/h8VxvG3Tozc5pFHAAmjUi7egIxneN
	 vTy7r507FJGvbMMJ6Q+Obq16yS1o+/byegMBkyqI4llyWejQ6nLILw+a2vHSoTGjsW
	 w4FQDszO95S9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BEF5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068508745.13911.13619490790010074696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96493d517431b3c1e47844d8fae8e56ba9148313ef93611157e942da33e13dc9
Date: Sat, 10 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670685087
