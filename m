Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1854626
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6BCC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664956853;
	bh=Nw0iNZbrZhmU0wwEf5LdTwPvROqK5TOYMC6R2yvkkIg=;
	h=To:Subject:From:Date:From;
	b=HTiY2LL4MLNoa8hCmihZzUnqu1Uy0QwNCRwu4GKXK99GSMJpkOTBmDkcImZMMgJPH
	 HbnjdTYH+sgoT27JTB16bETKxrs2q9BSDNbQWJIDIGX0t1749yhWGuW+np/sxuWUm7
	 P0ej974ZtXQmUxrfCRmMt4+by8B9KWCPv0eHWVc5yHcnC5lhQh1I/f/LDLX0CzrLTf
	 JDF0n2O2HT+KNJaqg6dlRa+GdyFlqvIllnTok0Q8Lq1l83DYKJR31J7XVHGEeHMI7v
	 D35bFox52ABerjjmNB09MQVrIoAe9JL4R8fB3KuVC3QGJPJKSjVBnpZy9qjT27cAYD
	 2tEWDwjh8kBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F99AC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495685331.4467.3173799141022870182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf6e06c1a419877ed45fe9395fe4e1751fe7183a8ab20fa8e3c2672fd14050a
Date: Wed, 05 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664956853
