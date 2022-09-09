Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF28A53A4
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F4EC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662745253;
	bh=yLEKSF/Y/c0NsVLoHlKXGFw+RHcLSwWrS3OscBpB58k=;
	h=To:Subject:From:Date:From;
	b=HvyHOCZCLipRbVVN1OmJt7LcUmOWj70/t3z+XxB+8BzfvSggWrudL5PEwVMQOcO6H
	 ffF/IZvVhDqkveAMVy1SIparNyDuTF4xc8ZRcJrHsP0UJJ3AtxQkqCYUu5rJ1K/Ha4
	 eQtL24TMjISi5uAM481/kcsZXA1rQ5XLPz+c8RWA+1Fw9nSk4+Zw1hIAsuzvqNjT4L
	 KU14GxAf8YdkcAsek5fyX3CDSmVCsXgqFid+d3EhybzPp1/bmKBep3ukjeI+Rbh0rW
	 0jUVut8jCvxPZpXtdxpUVqHHzP6L1y1Zy1WrGUe0t0VbT61pc/CHFSBswS5xnedlC4
	 Tmx3U5KglpdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C21ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274525334.24761.4478442247659053972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5862624c8c8fd5d3b32498fc20d50cb612cd009091485e470e24f0074e8a8d3c
Date: Fri, 09 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662745253
