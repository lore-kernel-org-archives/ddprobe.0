Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48C31C10
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDDCC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672252287;
	bh=QWNZvwvREQUdEdag6k58C0HOSkH6OIx3JKG3qnHGSD8=;
	h=To:Subject:From:Date:From;
	b=NZz5TnBptsNFG/Gz+UBAAVDHYUfVS/842q9GTU5hyGVJVPlGETrKDIhjGmd8zdsCU
	 i4W5lFxE9ESTOKkd9u0/wygvek7+mHWGUQyVYicxJu3osV2etu2wg1kxBzVQg2AvwB
	 xgCfNIGk62FvfMzxoZqFkFMQPGk6UzmZnXPoY9SduStAeILLASsuWMKVNQGGjlnLm2
	 xkGbThLmOFF0QS1l8r7rf2FHpkJB70aIT5Vnfg9qIv60L9l1IBMjQXy4u4j/hd5Jqf
	 APR+OezhDoWGIFuLpe+pKCcIe7sDFJRlijZmjC7V/fyTw/QC9IThioume6RLLknidB
	 db8Y1HaOvEEaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E9D3C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225228750.6693.17006788707358873867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64da728f55a6983949d854573817fb00977e75971681d75debbd47578d8ad8ae
Date: Wed, 28 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672252287
