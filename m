Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D390B2107
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6FFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673518287;
	bh=k9aOgowagYhMejrcTzFs00AfOJ+PVGb6VuNRc4TQihg=;
	h=To:Subject:From:Date:From;
	b=kl+1/TIjx+VoUYOElkMZhgDQBP7lig5L9IqDZPmddJj9Y4o8tJYl0HTJhU4tlC9u3
	 nFUSFCUukB0zpMjoiCINDBsRS6Jt6pwmGoMrAld/Xe2gO58r7OL+WHYJhMcscXUUFA
	 bXh6RpuGnKgueq/fD9cuGmVIcLLvYSgAmf+PhPFJrhLZyas1octj0qYNk2hXACqcYJ
	 hdzomeafLzlbuDv8p93HU60rAv9OyYx9JNd6eHBxBGtwcq/J02PEmoSZELBC+EOpPG
	 CFC5gawz/ukuCM4ZOeMFjLn6c7A1U1d8gzfYBWk316AhQ8mmjRsQr0lfgk7ytUUpKs
	 4+xkxkE5k5bmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642C3C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351828740.554.13400020360402656352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1821951cee870fbe5e92f6d1c67e16dad25795610733a0e72afb830e0a694f2c
Date: Thu, 12 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673518287
