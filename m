Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0E76ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCBEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672177287;
	bh=Fp/FXqf0K+n2v/8/KVnp0SQlFfwirrt6H/sDhqK3F6c=;
	h=To:Subject:From:Date:From;
	b=XEi2rZtikOROLHO/lMrY9QLid6Rut+6rsv2wCEI5dignt4jbOdj1saCbKC4kbF/7k
	 vwmMutdAEW3guN7V8UmBGUkGKnxgkv+3QkIKhgM3KGVEd0r9/HSpoD5MdzZCPrbfWY
	 fuWXLF2RQqUb2jydiGtt5QO6a+YOOAOVNUCoyQ3ia0Eg2akiWfQsZUJZUD7Iz2BMf6
	 /uN4wCLsuySj5QHhCuCwfp1cL+tPuugRoH+um6/TrkXGPjY0LWK8eEZTxp7G+qh372
	 Fov6IXZZsnrTaFEIjHs+0Pq0vtY94nROwbofBG9f1ZGVfBMegRjvh3I7aiEL0Ll/he
	 B8KhEkTPBJjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDE6C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217728744.10823.12271276834650466595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bed6763df5e3a9c763079bc3216bc0c0aa26ae4459b3aa678fe0ce2f65d394
Date: Tue, 27 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672177287
