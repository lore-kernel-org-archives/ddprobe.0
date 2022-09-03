Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF9184C
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2639C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662185453;
	bh=upt4SN7OTWJUPWrFL1ZMEdK4C/n58n/qz4Q+kmIUekI=;
	h=To:Subject:From:Date:From;
	b=TU6mhH3+M4Ust8usCFbRoV6cDaOiKYmYjwqn2qDOf2z483U9XV37AOlRU1NUSjDES
	 r2EuuuNjGkWMP00FH9/LbF4HCFS/UyBmrvfWem/vrVaYTTgbs/8yLmUrHv6Y3KQmyr
	 iG3fjP3Q81q31tSPu1eSDT7OIbv5YB7xaO/jzk8k10iacBN+Ie8u0Cj3UemDd3yRas
	 hfik1d46Ey+RfUcLV+b2/jKWhL1rbiqcRpOHFRO3WYVlC4yH3XgzEAOON8fYy18e6H
	 gZbDHw8ZQsTK3YPja3/b2ImAWF6JCzGY5G5TmiPpkbJfeFvc60KL2tAxDIanwyUbAj
	 ilmCr0m6PdJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6DEECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218545359.9442.5393457915529487726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4d948588f4fca5f8b56e958670c659f7edd3ae03189c8e0802d42e310338bb
Date: Sat, 03 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662185453
