Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32765D2ED
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 17:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE143C4339B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 17:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679419085;
	bh=V06aeLACUQVy6jdGU4DybH8wIlNKenuYGaE1ZsABVCQ=;
	h=To:Subject:From:Date:From;
	b=Kq5fOnQx7HWX/IKuwHwxlGjcE1KeNSABj9IADBIJXhO9aT4/558YuH0g86r09COwA
	 7cNYIGjyFghhbO8hwf1Jz+hJk7qSKnqGOB5NdXIkN+1qUESjGyvT8iL8fD6fV3UdyY
	 mHf3+4SjDvV39AFqYuVqVhNSwG2ieM+44dTgkFug89ohwqlNl4a697qNC1e4Km+fUz
	 Jb/gYlPlOHUiuZ8vyk8dUBn+B20/SXSAXTXiq6MiodZNCCQyvNqOTEc9rzdE5529QV
	 o68C9QmXKX6tsywt2kdM4uFd211D/gBFdB5D6GQ6B+Z3rX3uxZK9kNPHYARjyqgQCp
	 DSF81fJqFtL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B61C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 17:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167941908574.25572.4998671159716695638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690837a0a9fdadc6064650e3d7a2709c3d61b486debe6076a80ca8efffd32a80
Date: Tue, 21 Mar 2023 17:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679419085
