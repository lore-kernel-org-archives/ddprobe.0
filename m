Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A0D65D
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 05:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E69C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693805048;
	bh=coXJURNam0thG/9JVmK5yTc804xwkICUho1EfnkUby8=;
	h=To:Subject:From:Date:From;
	b=UZ1H9PfJ2RQv/Xrk7pkvdFz9P0vx46t3hQa/GOgqha3i2B1pZ49JoocHGc/YLXH7E
	 vpNMd+sgAPMqSjBYqVHYT2z1fTqzpeE4Q9ka/Cr6kQjVUySL5/74wLzbCIPlYDKgod
	 NWB3qUlxYVeAzquqy/HW4Q6E6Ydflpp8OOg7NJ69TfK13mrOgbOfdwOXYXADfDLzMX
	 1gSLdAdGdD8WlRwsObHh9mRkcfm264t1p4rCGtdZP4a7Iiludt3k9tgp04Hc/ahgD+
	 fgbCAxcY4eLI7EDvHNk2zZbXRGKICMNzpKetzn8HDE471023bVUgWTmkAF7bNDiWvM
	 q2n3gZ0RmaYRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9608C83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169380504868.1184.9272664851451583132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001556dd075d54ca5fe05392e80c7e3a4fcb660e90b30c6947ac8791baa1a5b0
Date: Mon, 04 Sep 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693805048
