Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414FE3D7C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 07:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45DEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 07:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690268528;
	bh=+hQ7/nssA8hSualboY+1ehG4coC5XAw87se1IEnkH+I=;
	h=To:Subject:From:Date:From;
	b=Y7IafjKgZjc6ZnCvpu7rFsuLaL2x1m2MH5Y3qD75rLfb8vTjZikV/II/Zxuk8KOpQ
	 UtU/AluhmaL+PiiF4/8VPzF6xxi5g16xBLjl8VMIeLattPY3/4gT6ShuHpKu08jiT0
	 ht5EjfXDMFUQQsAk5ij/1yu2t+oEb0PaLexKn76SzJPZh9qD8/IVglMDdpsK0qvQoV
	 dfZMMhE4PhIYBwp6ACOtPc2kfmRy4jx7RdMZCmxN21XrRRCtNSk5VGmSFS+9weie1L
	 Jn901slO+qEDrZYPh+0Ak/RXMfzg5SJ+NH3aUDt+883Cv0emnTFkVUPFmRgjtQ2LE+
	 H6PRsgAT1lFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CF5C001DF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 07:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169026852867.20005.1010853425497857756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b357e76917f0a9f142f015a14b9a830099b759320480152554b68d2a3373efc1
Date: Tue, 25 Jul 2023 07:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690268528
