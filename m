Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18B57B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA5DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668242454;
	bh=U1IzcONR+Ea+rSLdHKZhvQmWrGdKg/QCDQHUXsZPqWg=;
	h=To:Subject:From:Date:From;
	b=Ny3RwbULPIfZfa7fOCr2GzvQGdt7vjp8jGg41WryBBlFqKQaCULDOePLJjZ0sZCdj
	 lWJM4J1sPXciAr54LddbIRBU5qweZrF5kK+vxJOp46M3qfu8BAf9vodX2Sd+O5/CRl
	 oDE7W1NhovVVn6r8f6l6A8eeV8+hU+DP+Fft0M6j4hmkNTvaP9nSk6JZ8K6QZhUM14
	 2KyIORExn1b9Bh3f2GQ8sQWRw3uga66Wh9VYFF6r+3a9dYqDMzvKSFcENj0XAoaG/J
	 Ju0D7g8biRqLFj/ZTVgzOMxFD1jjWJnUkQlNns1hyLBmH7dvcFbLEz0tGYPeq6c/kN
	 lueGQzDEiAt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64131C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824245437.7902.2938453704441452624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da06fdf189ec2b67a18987cb2f560bb023eea27749d87b7fd70a5afa3bc28bc
Date: Sat, 12 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668242454
