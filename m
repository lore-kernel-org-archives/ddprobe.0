Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE4F442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B08C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661628052;
	bh=N+2RBLSnvNhUQXbwjbIIZUwQQW7IaMCZkmL9WbNGXSY=;
	h=To:Subject:From:Date:From;
	b=ZfCMn/zzJHZzSCB+r0FlL+jiXSWaw44E7GVrVkFdu7+zTWmLNqjFmqGwSZo6dDAEb
	 YrcUuh2t7AhcHc4HcaTyULTrpPs0NNqhGfRYjmdFlf1e3yg6uf6v8iNoOhibbkN5C/
	 VZsOolwPjoD0KD1DnmhsCVORCq7oS0Rf4eyiWNPYV5BPQaHXSpn2qfKLzGMZnkzojv
	 +y5ze/TseHnwJo++d83B9CPHRrxG0m9XOI31F3/kUaJbRBgAJCpf8g9YEKib9ZwSKw
	 LbE9X9jN/MqvO3W0Xui8F38n5pbUn3edYWEl2N8FUwb4PyE3MQLIvwPBn4GugGCLli
	 59x4M56UEECcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5561CECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162805234.29762.5297475321591989862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1395923711b2b217cfe01ade98ae32f0d451acf8faea655788eb1eeeb7792fc9
Date: Sat, 27 Aug 2022 19:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661628052
