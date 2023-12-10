Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E227472
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeJ38jbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F444C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702229296;
	bh=qmc2Dm4ZaXzIoVoruZw0RI/UDEWscTWIjSbqorjrZ5U=;
	h=To:Subject:From:Date:From;
	b=jeJ38jbx/Z2nOAbFSJX1DdrGK7Cm2mxXQ8UnYQ/B2vFopKssAuWm0CxcWGgeiLFLh
	 EcOAYHJlMyk4cID1Xqpzh0kP/k2kcmDZyw0+sZUbVUzpq0hzwV+QmBLDlwgjfJmcTE
	 zy/aSypSxUbnqnXKDAErdhKFtpFcbrf2gBbanQVqOsZr++xx2l1pM8/3BZMf/z/+4R
	 QboByRStcCWRW9+MC3ziLwYMdwiPZKURCni03N1ppH7Sqmrw/PzqrHmb4PV3yEC1rO
	 /1X5jSVWqmHZGHiMKrKon0XMdV2bt2Qosxj4ubIgiyTIaBjwZmaPV6I0RsDPGTC23A
	 /DvK4YueXTBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6526DC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170222929638.7438.11139265017723963549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c36694bd051ac4e3bc33263ea44db02c1e0499b28837d40ea72bdd110879d3
Date: Sun, 10 Dec 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702229296
