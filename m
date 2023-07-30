Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECD71FA4
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1447C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690760528;
	bh=7OBXYRQlKkWJQCT0D8+YzDPBLjlKxy2WoUgsBFR7YzE=;
	h=To:Subject:From:Date:From;
	b=cP5j8NY+7GXUsuCFpH7EofuY4UCXLSUV5e6n8Wm27/NMKIYlaw9EAgK5h5ZtwQZeH
	 7ekQdFx8wia05gy2+IZ5NeyB5SLrmXkdifwr3k9lFO//jNM/DePw5Ptlu1yXHN51OA
	 lkUXWxg+P1eV3W8+ak/Ks3yNdh8WOSQXor/GqabkfuIOhM3eS6JwLnF05IKTl4QmgK
	 L8A6qRTnR6SzOwFjExx+0mdWbz/kjDf6WyRqGB/aD3DTm5N3xOMXeYx2d6j6UD+Fhi
	 IeqCP4EbfagJ+4R7ZT3OrAsRyF5jPNyLmQyYHeqdg4F2fhLp+wOPJWXmpdx6LpQH4U
	 ncrLPPg5PZKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35B5EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169076052865.30848.2079725711735900623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a9350d656166c376c4c1e4ced85bb9bddb62ec89232b6586c78a60eae2b26b
Date: Sun, 30 Jul 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690760528
