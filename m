Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72607C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3A1C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670223054;
	bh=B62/RTfCW4cv7/eoHKKTtJya6ZTENGrF3rZleh56AZI=;
	h=To:Subject:From:Date:From;
	b=XYl0P0MjrJezifjmR1gUrrmzjI32IAZ3j0GuQSg+ejYWtqtYK8XFnhVs1USV6xXHp
	 OHrX03T4LW+z4jF+WrCBqSJbrbEU51W0i39NR8qkYJqpA3hM0YUz7zbhBS3Oc4WcIi
	 Mld9i9gyVh+Kj2n/78UTitNJgbjtggFgIpdvhFUz6Ykk/IXtMuJU96gRz178wWUkKw
	 tivC0x7PnoMb9zBy966LTuS7qda1swrP5ZxjB0WL15hnlgEkBt8EduVNsNidapP/+E
	 lVpvuJ8HmGBGb07ThcggHmlHl0PAdaBDwOpipzxQzaoJq6Z1KFmlQ4+4DmyjZzMTzx
	 b12Gu2FrWxN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E07FC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022305437.32193.11191163421116640592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db613066b49fc1d4aa7355d519d49b3d885cfdd8d53eb86eebf4632be41ffb47
Date: Mon, 05 Dec 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670223054
