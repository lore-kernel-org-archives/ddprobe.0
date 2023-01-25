Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC61842
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD109C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674604985;
	bh=+mxCfvv4MmvKIXK0JtktVr6kT9QbPHrHKVYgkzxZo6w=;
	h=To:Subject:From:Date:From;
	b=o46SKPtGWpBkqEUSwhA8KySllalryfitLCQUvb9P/sDz8SuIX6XGxisc6fM2xwtPM
	 q+4h1AFW6WLWsOwhHVmcDdPCMQbL84o/1Be3FSG5mK832H5G9B6nVOUq/zAXDYTacv
	 o7tLO4LHs2SV/djLqnzSk7INUkJuzjoTJM/9Mm33fCmBSYvSHr/qUZ4eL0L3QuvUw5
	 hY9pM0WkLo5N6HtlcBU1U3leK/sIVlVtg8+KnqbJNHY1Q6FnlpfPYBRxLAbfbLCOqI
	 0P6isxftJxXDC70+n7U4Y/boCh1/mJexQpqhKtInOSAcHGNH6wJDL5wgGktN1WXHfy
	 e7gcIlsF5Xy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB8EC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460498577.3522.930335205310486269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca73637517909dfb39aa5563326c8928d456654d04dfb311d6abef2c99587362
Date: Wed, 25 Jan 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674604985
