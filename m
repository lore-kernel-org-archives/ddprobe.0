Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0674C41765
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAE2bvCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89553C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699976896;
	bh=EFJDWf09pl5drlrQd4SOdUmd3tygUFIn1WzpA3EFuro=;
	h=To:Subject:From:Date:From;
	b=jAE2bvCQE4Ckprge/wfsKpReK5L9urye4nr26VOQfSdh1OQUalu63JmYxNvLKG4aP
	 ckRRA3sFD/auhnipnMA1gb8mWYtHKu0I/94Ui65/tWeYWRJrEhxj6yO/XIV/H1ZnsJ
	 gF8DwA+aezj2iO1gJwNxcHVe1eZkCX4dYdwnG4kYI8t0MFqlrB+wO3kUQiP7wrjoiL
	 3C2akMQeItIibEaOZ/ayLeD4qQmLRDiDpIZIaD0i4+44g8ebO8mPeslaQp9Xb2DAET
	 +q76jKC5NrP/Q0Y7Jmfax/Rby6woGQKmK/2rVquCbT8hxNI/9hQW2XUT6FaXYhQ+FE
	 2hdGHqQldGyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66855C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997689641.22280.530050025343748346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb35d65df44356db2cdcdfd7fe43d750d75d2d09b8b8ec142b5ae52ca4c12b1
Date: Tue, 14 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699976896
