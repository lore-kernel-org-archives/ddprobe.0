Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5544B8BFF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 14:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD7AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 14:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690293728;
	bh=mqBtQNi9suvCU+2Du5TYWB4nj7ygnshcIhvxmOmQ9Oo=;
	h=To:Subject:From:Date:From;
	b=QY2UawXYzlcibMN7Xs5Swr+HHJIZ/1D7NTV5n/YG9C464vJZAc66ox6vlbFHU2Yh7
	 vzotiwpaTi/JpDAOgZYKpIbEuk+0YjyzN2OpAzuRJX0NHsZvERGZMvBCBYM6evQ85P
	 WVFXodBLWGWKLgduBQ48sj7ADr1okuEmAxahb9IkTgyfkBY2Yo3To1+t2ISaV9LjmD
	 FtOACfYmICAvHEfRmGGnXm0W7/2hXDxV5OKV5RT6+xj7DUigX5C+Jz0GCFAnTBI4LW
	 RcmDUwn4WVia/oZ9/4AYagfMtWRktxpzfRv52aOfpvpjpK125qsnzDMhJBHIM0olKN
	 y86QI6+dec/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A26C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 14:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169029372873.5134.13662087767089777584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338c26a469c09b8db7ae1986439cc03fa6a9f4a784e61913f10f8c673247d0dc
Date: Tue, 25 Jul 2023 14:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690293728
