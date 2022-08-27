Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD87C7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7223FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661623852;
	bh=SandxeVKWYipuvuLKSa86GYWOzslPGouncOtGuVOvjk=;
	h=To:Subject:From:Date:From;
	b=QQFwa52At8x1YMarOd9hrnYPirHRuMSpQn/1aeIyZ6KqZgAK2RfQZNLWRX5KRFUnY
	 CE1zwbM25YHnhd/El3eQiMPMUb1t4pJnJ5T1Ci2zTu7ZmlbHMTs3N1r4cQAVd2jqnF
	 mLeV+4E/kV7GPiee8NQchxqnn9EfZWEp7MAGrhzHa+wOvgezza5/vYOvScFt4Zfw4H
	 RBVJfifJavQRyzl9GvnrY5gOJVApFG3sb8Ig7hQ7sVsBj7H6IdUu8aEot8zJmwzUid
	 00IQWw9cBBTGQmISOhw9/gssAGdYCjLlB26XO1fBTUHEj57emvuPz/KPWAqG6b2nwT
	 4T+FN+Wl2ZyCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E67FECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162385234.5096.6349032989683646393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45411e80bf22a6e0ed6216bc6871285a757994cc6452a0e49579e7fa9eb0bce
Date: Sat, 27 Aug 2022 18:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661623852
