Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAB420F4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08CD3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689312069;
	bh=Dg8S6AibHvsfCBawzsfwz4zOhwNoeHwmeckH9a5NDUk=;
	h=To:Subject:From:Date:From;
	b=XQ7n2HKVyfq7O7VlYeeAdJkHqZR++xdz144A2xzL11KuV40rpzxykC7Kc2LisKRK6
	 5Zt4b/9fo7GTqxsgKk9cRTKr8UnUKVvHwQ07lJnDempRr8s/jTMeGGWSHvyvsh4g75
	 3BBo/M9GySF0pUm6Bi2gcnzODB5sQhbQ+MSxbX5SmvKZm+6+28ylM2EciVKdgPH5X8
	 4RMHoBlwqy4Hc/ddgwN4GZccq/r8mEtsGnYbhUl1IsMnlxgJXHy63zYLJIAVX3hI5y
	 Kf/AQs73tJaLFluZ+AdkD3tFhNtuoW90NliAc6npqnHrseS5eNTfaEl383IYx4MfN6
	 pYsSjoWHrCqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F7AEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931206885.8273.14418263470445577179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a79e1cde8bde3ba8915506e68903868b514fee4435a39ce8e41b1eb5062bbe
Date: Fri, 14 Jul 2023 05:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689312068
