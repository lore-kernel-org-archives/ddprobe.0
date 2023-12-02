Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1312DF9EB
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VshY4vjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C15EC433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701512296;
	bh=Og0DTA7/V2MprzyzB3iBJj+d2n9CuEjHTyLfAjtpE0k=;
	h=To:Subject:From:Date:From;
	b=VshY4vjTsrUNjkoXrXRDCuGYv1ReQMQrp1ENgJ7IlyVBaHsTr80HEkDj4BYBsRJHa
	 IrM6TmkchtrsmfEq4PrRX/ciF897XHXddKbvQc9ot5iekocCNqaKu3SlGfYjU7JlgS
	 H2YkdX9SQ5inRYhDyvqHuEiWXt3w2ml5X/8Mz8P/wyJ7qOf3+6g4YoZ0l425ncCYXS
	 YTT6LX7cxQ7xAZj4gp+3sBHLFeTP5jt1Jjoh8XGMJa3ifpHdyXV7xNKSBg2N+r/sJ2
	 QKvqkO7Nk/0ydFSf3xK/1cVrIkLqMjV8qieHHVNmF7ZnT8pU0JrVEmCoD4suqf8QBG
	 yybPm6yhWlc1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD3FC4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151229638.32493.5202276148861996145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39285fedece70713ed402208f8d616a391c66cfbcf5326f5dc5819926b3db58c
Date: Sat, 02 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701512296
