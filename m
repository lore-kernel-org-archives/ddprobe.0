Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDB22AB2F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DD3C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687294328;
	bh=mcHzlIGuwfOBankz48yEIH8x+6unO9CXta6p9KkVwdA=;
	h=To:Subject:From:Date:From;
	b=tfdnrPPFo+znQBhE3vdrquC7MCGJAm2cs6LF2ZDMhfzqMLFCXD4FiudJgjDcrbbJI
	 S2yHc8PEucWfYnlsMJkyvet2bdPekzUB92Hmx8RqW7H4GhuAndrDtSjIp3H51wIZVe
	 ztvU0Ah4uAZu6qCRRmT44B77Ya4WHKxIHdgJzuMhHhc1NpzQWIV6dPCUPoFJCkE54B
	 a7Khy0TqRBW/e7+sW6Yv/Qfr9UqMylG7K0RxAK8uV/SWtRfLub+sYbm3j/g0xHisv+
	 Wx9dL5ATyr9+C8B2qiO7VhzQ31wIjuQtFbrv3qSvgvRLrYqGc9JNVqfpUs6iu87NxV
	 nBzdZhztvvGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B110CEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729432870.4273.16103112830995584863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98d0fcd66a7d37aaef3b69096b1c7f401d013ee3ad33f54d0bccf1d88db0599
Date: Tue, 20 Jun 2023 20:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687294328
