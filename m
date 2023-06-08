Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AD319930
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E585CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686247985;
	bh=U8t9DKjqSyGVTl1gdajOoOxWQzxGa2mInBnhc3hY9YE=;
	h=To:Subject:From:Date:From;
	b=OpS2jo/l3YpSBhHjyXXcFKfGkxuT1kTb1WDMZklbA3csUU5XqBTxga+xpw1fiEsST
	 76d2N2lRUkTZnwRUwTBrGrlXdoadX4hMcocMEU6XQ6vA/IaqxlJdt+nZ95CENhbsR3
	 pX7w9bWsHsMmwwlBdOC5CIbB1lsCRMVrmL8fKyfnJWTGBYca9dmVLmfB4Q9cS/2GJ1
	 x+Hrh9uecYxHNTERnVeV8CJgmtixNDzy3ZhST8XEivOp3FTQGtVWmc5mOp1u4ECmIf
	 4WTjbnsL+KwCzfMrxWs6BmJ9Z5se1aItJglEkxXwNe7YLVaLxeQMNdhzJADRZwKZAC
	 WFa+We7csFGzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD005C7EE29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 18:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624798576.8869.17968254452750749371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01744a471a5f54c13ab1ad54929e7b6323ab1c6482ea8b9d1a12b2bf66cf4f41
Date: Thu, 08 Jun 2023 18:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686247985
