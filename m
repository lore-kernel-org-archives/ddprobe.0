Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9E71FB1
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 07:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB59EC4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679470146;
	bh=C9MbDe0zBkgaKneF4JEWZp2dQGrM/um0U3O5WffjHE0=;
	h=To:Subject:From:Date:From;
	b=uYpfcSTir2p63PqkULbC+BLBZNGv3KxPcuj9XcCKP4VMin+twUI8yNItB6Vo2iCEu
	 QBa+5HBmKVTvLBAZ76BYpxGYZpf0eorV3xVCJ3ed57n6aCgFeJimPATtrjPBNPSC9P
	 rLQFYjEvxIPKnrmLysC9/MkVF0mraL/suc/zXAOj6F7w5X4fwAfHfivzHxD9BaXvV5
	 S2mgkcPjq9/OUgFj4MIHptmrSuxXFkWGJDylzdm++rR8NrfYQGEilxwM4THS639TJI
	 T3cek/mecd7duHGSZBKkxOg7beLyi1Pa/PvLZRh/XpnUxR5LMfK9wbVa8fcfjr12Q0
	 NDnAvlPC7Qmrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD40AC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 07:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167947014583.21527.11707710016757148849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167c958e386ff0d6abfb3a5fde05dfaa08b4fc71dd10bdd803e166d1e5adca78
Date: Wed, 22 Mar 2023 07:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679470145
