Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534FE14A91
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 20:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDFC9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 20:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685219946;
	bh=v9vVH+W3nvlfItZUSoaXaoPlZcDdtvYSqgRGuXYEI1Y=;
	h=To:Subject:From:Date:From;
	b=jfPDyVfcrKluh9Avet7njh3Gw0jmXS5CFPluO5uHIwvAJ2wQdSnGvFTBpVhkPGXP3
	 KykJheh1maopiSyyP3uIkI9jVWCzWd7FsEeYMVxO9sQAwZYTpS9aMT0iyr7PWTYR0I
	 dApdc5mf+jh13JnzaW9on40sWd15OD5QaGM75knReFRNhLa6M1UYdWoObSyG244TIK
	 lS/g2kir+8EjaTH8yy+o4yQ2QFvS+FUzhL0IznDPRcbVdaQgjIKezzvftxJvdgfJre
	 AsqwldS6eT/8ka1pQMw17EyxpQGgFsYGgEYfsn9JQFuiwfL9oZpOyydUAfIsGGrJZG
	 uQPERV4GPJ9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF5ABC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 20:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168521994580.6281.8829487803185626728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277c4bddc94b0cff578b368ee7982720d0ef05dbd83a3899b05a0288346737c1
Date: Sat, 27 May 2023 20:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685219945
