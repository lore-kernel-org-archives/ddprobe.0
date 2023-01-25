Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45537EA8
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 06:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4C4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 06:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674628385;
	bh=Lj8uTGDpJjjowgWU0IytUWTxe6XnhBlkxLwrrC1LUx4=;
	h=To:Subject:From:Date:From;
	b=DJtW3csTV3O53pcUm4tMhv3GsMC3IToqpfOzU0t3IR7Th29rdOyi8TBdi+reazqpV
	 ViVzK9Wz/n8i97MSj6ecSPC/AV/mo/yWpGMZd9uulpP0mgiApDRx+XpU0CmH0MQI7K
	 11QYgGze/owWX4Rl3qhndYVCXIzZVUgn+nUKERT7OuzkF0vvc28GzGtpOwaPpwG4Qe
	 mkTGRqg/p2DnUscDcjHxlyCSNFEWcIM+opz2+NdZaUct2qtnCgBqy/JBIbH++xnqWu
	 OPxCM6VihCebgy7b8tlHDlW44pqPDa9Y6Otq2VoJqq+ineezf36uWkNG5eNJ5zukaE
	 MvLgCE/1yjKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C12C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 06:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167462838572.31583.1359096733014388867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4016daa07fcfc7345aea8edf7250a0fa24911f9642eea4df0c829b996d179cee
Date: Wed, 25 Jan 2023 06:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674628385
