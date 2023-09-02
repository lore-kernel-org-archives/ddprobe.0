Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBD98F50
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 16:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF500C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693673648;
	bh=8PdVLSzFgdDXhObRHbquAeCrQgH8QW0srllSeAuygco=;
	h=To:Subject:From:Date:From;
	b=XNVhQVFjbUIV8HMZyvrNmuLSk9oQKicOSUBd59zDryu3VTkTzMvPcvZCGEWeqzDG3
	 QGLAXbEA4fRvrrdua1qO0P7dYzDr8FEhMYQAaMPCaA2tuNFTi8sIxTQkzpqgYdx2AD
	 uMW3744BdKc6T6LPZ9SJqQkg7OjT2DvUK6dLiLu46JUDhPwkqBi++KDGxpm0KKziGo
	 JEf6r7GHGPsDGXD8/QEsTwjdD62XUO1PfRzv828FFwAV4rJaNCKL7i4KXuHf3sYGIL
	 E65+8pDnDGQftavnN5DJ6oqyLuT6ha31aWi3nfhnK5YD34/+df5b+yu87xeBSGXvZp
	 REiiRqbsTWMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EB9C71153
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 16:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169367364871.17286.17959472843384047420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39e6b29869a738a8a1cc41d09f4c8affb116fd384b976dc2ed0129c9223b806
Date: Sat, 02 Sep 2023 16:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693673648
