Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9188365
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE19C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664950853;
	bh=u1YzVDDEP+FsaNcQhJ2duKDg8iyBqARU7ssNyLeYTAc=;
	h=To:Subject:From:Date:From;
	b=W2Oyh4O0hOV26RPgv4lsjW5D7wjnts8IRFGuvpir6FIoAhgIsup7e/4MMdp/GvX0o
	 YMVj/wULB20J/9hr816NG0eTZP/Jkd62VfraR9frLA1E6nhhILndp3y1vzD/CTiv2Q
	 5MhYVikRqL6iqTT5Dt5RrmVouCk+eeFZkyYlSUUkw9yO1VXpsDwddSRfV1ahZjwRW2
	 j91s6xOnGRrPaPAf8YICKwTjmBvxh7OEE8cA7aglr6vEexqLWwvbEc1GhiJXOW9AvM
	 WPhCVrf4ffjsBfkXNkEfyoanwP7q1P3cONcuJcjbM7T77woP1SCBIsKMDEkKL2jcv9
	 zhxW+qLbCpRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A2DC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495085333.8757.11301602501361582561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648197a34665d053be0a455e8e26ebbbeaa02f4e7609c0a7ac8aa4cd83ecef1c
Date: Wed, 05 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664950853
