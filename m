Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41614C71
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B6FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661539252;
	bh=c4V/1c2RojLub8Nq/PNGY8Dd6bUM+7KHw4G3KmW8aNE=;
	h=To:Subject:From:Date:From;
	b=akOWFKVHIrSF1eYnZBO7N53NEl42NThzq9vOTisdr3l/ZivTJytReDKwICzPa5fug
	 UihFYCZSIEhyz73Z+pI4hVlQcWYdBN0Wt/JK6JOx7twZEWhN/euDRW/i+bL7j2TOSx
	 Hmp+N+kGFCEsTbGpdPHEMqDNQiHxx6IjV2SVtCxPduUIpxsDn4Z5Rfqr69feJjPjP8
	 aI4Sf7abIxSdPdL2CQv7NN6Yu4z1ed5ZKEW6DOM6UGjwfowWYNvjcKjlO4PCxkvUsP
	 /pAPWNf1XqYgALCqLFrbg7eN+4ryXwI+UscOjfRi05x9JSW52jH46LGZ5LcJJESVqz
	 BLa5i0kqDeZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585A4ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153925235.1509.10122204917864543974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029889ebb7c2dc8177951fdf6e872a6a14f5e3a36e6e6aa7a39c1840eb2adf38
Date: Fri, 26 Aug 2022 18:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661539252
