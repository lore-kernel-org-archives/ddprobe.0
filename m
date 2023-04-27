Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DB133D9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6658C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682608325;
	bh=oKYSDI2Zt7d3euVI2WAy4N9yj9x3pgEBBNcV/fQiIjQ=;
	h=To:Subject:From:Date:From;
	b=EnT6cvBDyKDj9RZwIQC8ErUrbgGDd3ASBLC4vHuhd06oPKRyNWfJsPaUu0rqnCqgi
	 uChPb4IcF4KVmff8MjH0oMCWLcOR/8+JVfSTiD3bDkF1V0POp0kRN+VnQ91NPZ7GZa
	 qd0U8mqdBQFO+d2x1jpbfrJiM2yYV/LnilI039PCA4ZMyAHkcWaBJKLTUiF786hnv1
	 NoyMNYQjhphsE0FiuNAT0rmfXgtbKfxqw+UCI7ZjA6CehklKNJrdZAkWL0LRtExA7n
	 rH+Ld501+yN+jJoXKq6VeJF7M+dhtCyv5KJW1jt907PM1mwJzqUldXdLCnIY7Lkprv
	 4GZbJfWu3ayBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0F1C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168260832575.6832.5576501637190505055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87662762a8dc75c1970db378a7caee7a437457c9f9b2c5a6be41d3d455b7ca5
Date: Thu, 27 Apr 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682608325
