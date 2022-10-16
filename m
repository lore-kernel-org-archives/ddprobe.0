Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FF8A56
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71268C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665912053;
	bh=BkOw2F7j6J6x/0+WLNUhMQY0zBXuzcFs8Bh2HRraM3s=;
	h=To:Subject:From:Date:From;
	b=mV7g+zgW5+RjOCFo0B5vajZdcCXv4A0JBl7bRF0ibzF3qb01pGG7Ff0iXli90vnFD
	 e4VwCVALK+YdJ337ob7/QOSEMp0SQWg1CXoBzBcncSML41ykhTfURl9d3PKQECTf2t
	 XfJBAkU0Fxx0lZ8pSGshJKT6QxK89uT/UTRdS88alBKBhLTS2DeRk8GA7oaUfjyK7Z
	 49MocXJDOey7IAqI+E8kccZIjg9Cn4GxgTqOXMuoejCc3qHy5rpbR6fAiizWD3WXbO
	 m4S9zM22svNZylKmRSNxyxUtr+PXZaatH48eIrTQJG5ptykwXWNCDmIcnZhQj9TXH6
	 orNxfBKIfuA0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B892C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591205333.10869.11513105087025199301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092b57267c3a0baac16fea88dd334182a71253d62fcd3cfbc01be54ddf989ec8
Date: Sun, 16 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665912053
