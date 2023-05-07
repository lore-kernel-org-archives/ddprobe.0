Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BC415BE
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6844C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683433685;
	bh=p102rzgP6RFNe/qYKJr8VWtwawe3+8m2BAtqwXUc1R8=;
	h=To:Subject:From:Date:From;
	b=eoevN4CwpmxQlRf3C1aUYzQ98WLcB2xTmohzgtnHH5svHrFVv/J0VVV7BkQ/M32F9
	 fEpK5OWsHPNVbUFrZRd+DagTuBqEVrUrsS8AXDfvvXq0IdtAddHzGcA04+M7Xn/Jz8
	 x18nazKMPxd5RD5wkNFqApkXt8JZR9Z1aJNYZZnhJIoT4zNUf2Eq5cPoF7MTGg4OhS
	 8NyAkEIJfNJVaFdulQ37HEzywKRgEM1W63cr3lT9I2jyaJbrPjK7wGkmv1IKlhoDJR
	 iXLdayowCjNrJMTYkaXqzkVQghLwYlTJRjnzNhjpSHzBNs/z/xE7p1HrVWXNyL5AKr
	 QQrRnqMFgqBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D30C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168343368574.12381.16019097913354309615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1aa4d1f7a3f3539f878838f48d32da3abd0e9e0b9475ad6b3747487c15114e
Date: Sun, 07 May 2023 04:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683433685
