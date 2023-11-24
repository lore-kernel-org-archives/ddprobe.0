Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130CDC2FD
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXJZ8BnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85AF5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700817496;
	bh=f2JvMaeAEnyPxt3wOQ67SEyZ4uNTq9uO5tbYI8bYRR4=;
	h=To:Subject:From:Date:From;
	b=OXJZ8BnXGzrOmKfvZdvZqfmgsjONxD7WeVocAe/2qGW55WG3RHKPfIsT58daDdlRc
	 48wiTJMXp2wLo2QR6TX3RqDTzNNOtXSOjW5MtVz2yQfwH7bdUyRhvKg0r9C2z3i0Lw
	 rcQVzdENpcH7kZJmw1z5otfL8vJ+ffy9yLuFG+K5UWd/q0Z81gXDSSIq34WPMf2ssT
	 OfI52UwjNwZUV0PX4H/ySsw1UCyDGJUXFPfiYs3SElNSSfWO/xi2X503RkhushRrOp
	 /Bh9KVgPIPakq/bszHlDpYCFUQnDPU3DtleIC8580zpaB9EAkdfw//PJLxn8KQ3zZh
	 OuGKUC9Y8RJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A0A8C61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170081749642.26219.2933326446578463599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ba79b287163df5b76dba57ac700690e931c2e82f9f67700019c8655da799ef
Date: Fri, 24 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700817496
