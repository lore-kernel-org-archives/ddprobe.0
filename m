Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BABA953
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E51C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677108245;
	bh=nI5DsKI9pUKXYG3QsZ/dJbYhJ1xHlzlPYsZF3sgMlqw=;
	h=To:Subject:From:Date:From;
	b=Ew2L2dW1qeDvw9kx8IHQKKVXe5A1zJHEK/DohvjH7YXcslRJxYlxWxjxzN8Yur3xg
	 1smsNmVc8HSirdLnhuPPyAPYlFuWjXjagv1ywR2k/keF82MPkj2mJTd4t2zw4TULyM
	 ZvZtWGaSfe2M9Lt9Ka+pBrmp9kCRItYCHIs16fVUuVIldXksIHkfl/5N9BuD8YEpBz
	 9RCexeNVvjksBokNjGAs23qT48EpnHWWRm7yaixwE3fHvGNY4lc+4u7k56zE1lEDqF
	 9NTw70HI26bDshDvm7HgZgHY/fQjw8yhQG8obZb2LWPKwtqzYcYyenWCqFZodjafP1
	 VBq6ABuDrpbQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83B4C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 23:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167710824579.27520.330333704831837702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709336f702301d0395b4bd1117c9a12cba26d768b639a94d0a9bebfe89e52e36
Date: Wed, 22 Feb 2023 23:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677108245
