Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC6DBA2B
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haPUjTq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8545EC433CA
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704053896;
	bh=Ajv7xYUkXkMvrqNs++OBqgttVzWtmfXh1tzJ3F4jyQ8=;
	h=To:Subject:From:Date:From;
	b=haPUjTq6HlMf++kIShLH/OorGN7WSc5E8oWUu6i3VOHGHCklQujIh/WGUStqqwZqz
	 kbJChEddEdJEIAda+LovY5tn8ih1Gumgimvyxbzin3+aFyyK0lqFu1g3lkQcaIVmgK
	 H90s/JLoS821IH9UJMOoRNA4GE4TriWvADE5uSyy1ZyKXFkT0YzPtkhAJlRtx2wVeA
	 UZ//moidKlNRCIhvwxHmNQk6bnAq45XljaEALkl5cTOwtOz4nlg45rD51/GDBZQetU
	 4lz6gMS7eObsuPsLKVD9tgkqpKq3uOy13xalFSgerajAgkw2+cmnkKop8nIVZ1LDzQ
	 IZ9aIcvbvQYSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66914C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170405389639.24374.12399565827448846070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93b4a8bf53e9cb1e7495666fd991dd4f2bda62d799827f02a31007c95982d8b
Date: Sun, 31 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704053896
