Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20FC6FA0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74032C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673892687;
	bh=rXCxkltKaWEiaDIoIvIBVOYgCg8bQeera885mwHhwfk=;
	h=To:Subject:From:Date:From;
	b=mwCOvpBtflj4F+eLVJdKk7FWbJyv0Kb1E4t90i904lj0NlHMhvOh23s4ied0I5uFd
	 IQX/+KgFTXuTLzC3WRb5915P9CuDpWxWjeoQhCAZUBx5pPfgb21/Y074wKuDWbpv3y
	 Ni3PPOf83gdrfMKnyw0B3WeG+zGuY3yuMrl7J4tqqJCifZx+Wf/7gkODBDwasv/8T5
	 D71wGDnUo6VlqezUNEWJLsM4YfJqo9nRwpOdnzXiE2L9O8j/R8C9xrbUK0ImBLUug7
	 TYXNcuNrMbgbTBM+pY/6e1JDvt5pZsGaozo6VrzLump27vT82bNk/4Hed1ycGQ1DRa
	 sttoCdyGmZfFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBAAC46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389268738.9786.12994112093147676458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c904b3be6e034b3f86692303babdd6962c7d695bcb21fbc5af749e5093c17e13
Date: Mon, 16 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673892687
