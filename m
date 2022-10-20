Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CE15C96
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B94C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666286453;
	bh=oJoQzdxdTF09pwkhgU1/4gSAfRVN+BwpDjJoxS6b2ME=;
	h=To:Subject:From:Date:From;
	b=J/fmSa++8HWFNSC21TdljbQw8l7V3/JTMWrBUJDwrwEowm2h359oyhO9mZWk7J1cD
	 Fz9f+5vw79pYVh7CSa88vpXMF+nJDMzsHVYhAKamNYD6f1LA4PDsjpkX5836Ixf6dd
	 FzzO6dzuCz4HWpGp3NIbcbd2IueE8otE5C3eAP/n9ELlNIxj4CElQsZRF0doYB5JTx
	 i++XLNW/aMIkyA2stxJdtlJqfiLGw6H1KhawG7NgFpj6vfjWVP73uikiK2KvAXlj40
	 3SM2ppADb+O44SZGFFqkwHSAeFlRTmPWACAgWOPYc/xczoUcr/Gc4So64pqRqeaNbN
	 Ga99HNfZpGeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554BDC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628645334.2356.5150125616723320431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f27ac829904a7356ddb090168d3c57be993463be7b1cf71355faa457189a37
Date: Thu, 20 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666286453
