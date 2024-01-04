Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4292C6A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7xRsF0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76FBC433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704403696;
	bh=n3KQ3aEDx8kWFw/ko7TAS/9GmcytfEjrqpJpz7zzqgw=;
	h=To:Subject:From:Date:From;
	b=X7xRsF0QNtAVjq9+LRs0O0j6Eg24dGHsW482G+001ibBF95oEoQoZ7/TYvURCR6x7
	 VGmkk0heAcRsMg71cfzVjSV/hAguDhZWylvcSZEX9Tr6u5kGPExwXpMFbdJ/S6C8ls
	 O74c80zSva8nMAGIWGKJW6jArD/rQ82zN+7z1e7Rk9rz7u63Dnt+7vHHvQgVDIZnn8
	 xvzRIvLD2FJ9cmkc4EfyTSi8SQaZ2Q/kHT9lbPons1rSNIW1dsJUmNNkLzcb3MSTqG
	 hupVJXFNHa32qvts57Nr5P3Bfk7UogsbpMM2Qe/WtqhIgdE5Kjt7BfIGRL5hq9SQLE
	 82hJoHQ5wAMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CAA5C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170440369649.28015.14297926088134173698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605dec66e02034601a7e2d0c40661e7fe3e639511fa455489ddac7b671b0b3d7
Date: Thu, 04 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704403696
