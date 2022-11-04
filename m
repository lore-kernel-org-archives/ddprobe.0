Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47627C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91A8BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667557854;
	bh=llDrOq5KBdhxihGkgywm3wjYABLqdnkN7/t7nTJwFII=;
	h=To:Subject:From:Date:From;
	b=lKWuu9MTvBdc17Q9YBwyLPeArp2MNsSx4bXkYwO7Apszfj/74+79KsWi6PBSrMgUx
	 dchZYXcknagztYTuw0yycvTq+h/6fVmWcoB+nScf0i9vLtMDLp7WSxfw8S3zD4tNo+
	 knD4odrp9L2eKQT4O7Au2te8kvFv9K7y35NVjbD18a00v+699IMxfP0s0O36jkJJu5
	 8b4JfYmByQNtfZanM4+bcOGxO/a4UZbRB8zXdsaeEPKDKDV043A3tjiThcjVx8CUQr
	 BhoICgWqSme1nBJDz1nyzpDSLjBytl8gs7A3pKCFmDPW5PTFDiYPi6Dn63ywu/2hWq
	 0w96kovjnwrkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 727F6C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166755785445.3949.14742374476749358141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed3090efbf0e2e139c751a5e7c58077461ced9f3d538736624fd2304d23bdca
Date: Fri, 04 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667557854
