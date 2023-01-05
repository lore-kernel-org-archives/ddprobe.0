Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B9DA2C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE2CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672906887;
	bh=0SSeZeq4uV6MzrIC56++2J0QDPS7m9DEPhCMea+MgE8=;
	h=To:Subject:From:Date:From;
	b=OfBQDH8kRQqYWxZdsWR4n3rwerNILF1lgFfCvfHHHt3jHPnKyXaWfMrnUp2zN9z5M
	 mSqTE1WbiAWuvGDcqPwG2RQN72Sv+MVhIMhy903Bv76w0+vk4g8qD9CjAXexlSeW5x
	 qmYrVkM10W3UEQG/zsJrvZQsC3nS5oe3Nd8xjFn3KT6As3LnrPk466cyWgv8tkg+Rr
	 H0Oj3A4drkFD9z5EbZ/Cry3PjDgDtiSJyxi+xE4QoZKlg7tY+5BOAtjdmLoJj3omKe
	 Yw8Ax+WJXWdk0/h/I4HMTNLU+/v0whV9J4pmc0xEGCXd/LCwZCG9hYanZxTRzEgWOk
	 B5RAImexOq6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B01C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290688740.18453.14037303820806835530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2912d2b44cbda17639435466db26c34d714d24c1107e892681d0f3d41e38c803
Date: Thu, 05 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672906887
