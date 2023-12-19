Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1425213ADA
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZXX/xuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8018FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702978696;
	bh=L3YZavDcPZ4fbawrzgvuJLX56uFpxN3LrxXOarhxA0o=;
	h=To:Subject:From:Date:From;
	b=VZXX/xuzTWkoMewvxjycAxxG+w58jTq/nS4nnpPp+iB3B9A/UOcg9+cNf8wji2XIF
	 1cExQgtfgiMimaht8ne9zUU3yblwUJ9vBKHp8+SAi+gVBzw3zR4NXM0yEL8JXussC5
	 jAKsgVfCvNdYI2qctElP40Cdm9SFDo9rhqIKzmU9eqweli9UBwTfuWCMRKDuKzb0EL
	 2yykNNllowArl6tI9Q02EL8NSm9qqgVVRasM5ELOjHSmxTcw9/NfaztDtkAxIKylp3
	 eo6/BIRh3FcGaM8wxDhfnOq4m1UY46KcN5mOLaUqw37ebZdtSNdhcLhYuE5myuodi8
	 N8KyYOCMI1bqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F44C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170297869639.14911.12903345490067152051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1f888a52445a8e7546170847695913ee4fd3b49094892f488a0f6088b27235
Date: Tue, 19 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702978696
