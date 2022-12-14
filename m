Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A08F28EA
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C612EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671030087;
	bh=C0gerxpw2klZMrmZpv0z2WTdB3QF9W+asgCYVTLqcDo=;
	h=To:Subject:From:Date:From;
	b=btjvsgSgaB+73J1mvSlndNubRgvJx26edWoDP0KkcOQE3DiMl2SyfnBoUjpBe2IvZ
	 TM5oIAYJ9emnM4PXAjd698bft85np0MDw+A8LdRJXTmjZN7i88ynt+ZM72CqCG34FH
	 qkLQ7Pasmna4bjEXDSiXZ5nGsyxLhNi+9rRxbT10g6IAHVyK8RI476oO0VMFWmt1OT
	 Xn0Mjr6SBPK8jKmJKZfHwH9TXsNcdiUKNsfNsuggmEYv9Lgmh7Rvx1zO8Xz45l423i
	 JtFdQKdGOiiaFILlZ9wIKqh1W3u6yGjDFATNZF1lE8BLfaNGc7EpcZ1GU3oJWuLy/W
	 6lpzVYtYvmm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C2EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103008765.29723.15537663579016205917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2446bdc1ed7d826b1572cbdc6cf376972eb2178c2b15591d5aadf41f0e44c02
Date: Wed, 14 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671030087
