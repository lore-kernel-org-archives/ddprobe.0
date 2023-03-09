Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA48C963
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 093D8C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678404246;
	bh=na6/W95Vq09nOQ3kZiGnO8xbwg9MJ4Oqs+qcIQx5flM=;
	h=To:Subject:From:Date:From;
	b=girJFfHY4JC+/AVV78iValr0kQNlQaHz8bmdEKnx6P5KvVhpe3nQc6HUQHYh8s8jS
	 061wS3YTAybMHXEvLbvadg+Spm3EyOJLW/DOqeZJX91kRhpq5E85nqJeFx+Ku8BgTt
	 lfpewtwUJJU7mVXMnOi95zxEy0Z5M8M0tjVwkpFoBEA+deNO2zrB5OCj2RKvWPiQQe
	 RqG2Bf1DXLPJtGJQSpboPG8mkvkHzqWMuwIHrnQ0Hh0DQTOh/2SLR+7fnNLleSP0dS
	 u8PQnB9ExPAdzw2aMFZPhSvBjjzO1Mh/JmTd2Z6KQQqRllhSS83YY4XWUVxvwBKtmx
	 aMLaY1cFhkciA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCDB3C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 23:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167840424588.31601.5179140828135598845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2bc8bef973bea638e3dc71c6614dbc4eb8279711f8e71d332c7626acbe4c3f
Date: Thu, 09 Mar 2023 23:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678404245
