Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF116320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C35C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672669287;
	bh=fe65wOJCLwZl0gSpjwPVoXhV8WM44fkTLCR5Dfq2JzQ=;
	h=To:Subject:From:Date:From;
	b=WAu5ZbBaIxsrob9x1ZlwVxCD/P+Cme9V7o2rKIQBn3qkkVYo8FpA41/zNidx/6zmq
	 uS9iIG2kEAEJ6sXu6i82dLlvZukfm1SIFyodpMFKEMyrcOqA2zgwsWcQnaJi6feg3A
	 2cVdY0OEG611Y40WKPW0bK+/ssWR1fn+3ROk0unmoVqv8z4HQBXyZHscrykZcYOIx5
	 FT/a7sSAsKC/DIrVgUP4pH5UdGsgFe68H6RkIfDoGk4moL1G1TINPPwEqwunAWDfND
	 ZSHYf8IglFGokv/kec6xTv9SjVeJlJwYDEASeEGQvDiFV5j30kjBpx7PkouBzyLLui
	 WRd/VgyuR38Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B54C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266928741.10422.5541549087117492514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb5e2fdcdcbc695516bb46932fcf4a01d15a1b1d91ed11666fa2a61817f1224
Date: Mon, 02 Jan 2023 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672669287
