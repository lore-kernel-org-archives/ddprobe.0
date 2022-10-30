Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5EA7E
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5E4C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667088654;
	bh=tgowef8BzkP/+Hth++9WT6UFx/ufi3RpqujZ0wYU96w=;
	h=To:Subject:From:Date:From;
	b=K/4jMw4/xuT1okbJGb2aFes4Z+84S7avP0AsvO8xQf0quiSuckkf3F7BBAG6zyLFX
	 H5NOTuY0GvuTkJdBZvMmsy5Kcs+lXb1Y/bw1O0jpBUMxdVuX0zeIBhVj5tM1Bktrnj
	 KxO1L4nr21NcX5JQvQSmBneiuVZ9GgDzKSsE7jpyDR5DyP1kj08Sw7qoPtt5LKOsQ4
	 zWfa8ujZBW7ILAwVmkjBw3Har6cIm/WUMHTVOSZUv5kyoRayr4V8yjN/hs2/Wg52Fr
	 zBs+w+ByuUHaGnuNL6nV7j057h4vLSOvnEBjMMwQ/Azmp2QCtVipdPwzCw4J/EGXsa
	 gR3fJpdIyovLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61643C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166708865435.20463.16362995168476186923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee279c240903cb4c77ef6959f3e4acf73fd69bea28d946c388be73f89f1fa4c
Date: Sun, 30 Oct 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667088654
