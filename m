Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2974C6D24
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S88mWBkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86961C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703754496;
	bh=82kj774ALYoneCQptwfEghbQ+8HKuJoum7cIFOwDygo=;
	h=To:Subject:From:Date:From;
	b=S88mWBkhwRLLKM5XvThWgnQBqKZvNond7+JKJKZdfHf1apENSMg7d2OFtMAz055Jp
	 0hrUIxtH0iAF5+aL5adZxUVHqUMHLUXC3NssEEUURg9miBY5dlm02BsABPEF0sjEfX
	 Rh9ntEOv6YJQ1Xv9FaCqDcvV9Pfltx0Y52FABo8DsGxZo7vuhxgFwiGABPFSqjEyAw
	 w3JqnapyGXsX4+43L+DcUs9I/VvIl8s0YRSM60RWlLxouK4Oz3KlmwfaD7VpXwM+n3
	 oYzZrYnDb5zbAWEY5n4UrvXI7kXTF4cRAifAyTsOKEvkM8hgkmi5PVfpwPUCrgu43n
	 LNBjGfsJmXF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639ECC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170375449638.10267.11791132568232249912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6deecc7a0b7fc93d4373394e46a86f5a9051457a3b11465247ac936d7894c7e
Date: Thu, 28 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703754496
