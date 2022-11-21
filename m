Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC85510786
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7EAC433B5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669066854;
	bh=LdlJButEoqzJJrQIMAersIfiHXdzVLUpS9YGdFaRVBI=;
	h=To:Subject:From:Date:From;
	b=Zj3sBv2sdGkDcxE/E0fs0FQPXROLmyr22e491KGELZ4BI4KCCvKRpZ7fmcomW8RCJ
	 pajioY4H59xUjQA2/BmP96Gl9UZo1vmS7Uug+q6Rzs+ThkJIumQOok5pSKZCSYpxjB
	 b26Sd+3Tj0T+KfoBNVKCJvRLBcF3iuYJVN9jTPED9KuDWo8zv4r0sDh/nMygwwNM4k
	 mRI40HK+eMwmNMKqtvG6rBkEHNOtdyIxXOlQG3nGSYNW1kfmAK2STV4YbLhhL34XeB
	 yMlBD+J3zS4iGUzg69kO1JMgP9FgeyKpvp2If/2J4skcwvcdhxAXgV4K7kr5XV3She
	 4V1M7ijalDmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DD7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906685433.3904.1035390507388738694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a31aca23b60141c3b2aa8e0e7283b7a9faa2e5423c09d03d7de534732c0b04
Date: Mon, 21 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669066854
