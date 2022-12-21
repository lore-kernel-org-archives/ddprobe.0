Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05951FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB75C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671613887;
	bh=65NxxdVJZi5lGEKqqEm2KUN+Fim0O7QOsDIpsJYavBc=;
	h=To:Subject:From:Date:From;
	b=AqbhxK8oLSVaVqN2AB57bY9oEpxW9QLVNIF8vb708AW8FvjjnUGbPiEzJcF4iJSSX
	 Yq4PKUHzFVe02lzZ+2UAc06Tp6NvoGuqWu9v93fBk1Q+SzAvZIE6HrJ2ARgrTunUPE
	 L27sxi4fIxTk7x2uEMa0Ct1QORYoFH9z1U9MIufs5qYUl06h0QVhsHP1pKfYU6V7GI
	 cacml+xmoEVNea5tVenZ4bATetpS3DlE0ZVJbpaJunBa2fLwq7rtMkLg5EkxyJrsDh
	 DwPF2+i6JXncC5oL9kkfRZ4n5n3bThf/aXVnzmNog6h5M2wt7M6MMrE3D4HQ1EVCZ/
	 o8olYNUqLTQlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA44C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161388743.31732.7043076751435217898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68248818416c10f2d961e9689a0dd9e3f457f5c5036984c91037d6e3268bf94f
Date: Wed, 21 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671613887
