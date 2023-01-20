Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442E517F7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE9AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674213725;
	bh=sXFf8EHXWzrL0OjXdwwq99LSRuCD8sssk7v9N4emQQ4=;
	h=To:Subject:From:Date:From;
	b=e86BS28bb3HpMGaS468MYvj4y009brxVvzyv/0PYb/+ZV2hpf231HC2cZSNdJtHwb
	 Ajzceu1CT9fdxsOVZudGlayvEVvRuhdzHzL77MEEDnCtC9gsuayjng3E/7te0kobGr
	 Sa1wEZ9MkYZ/T2jy/7VKRmIDLkz6AcijUCgPZYVKGSy/2vcu/4iDHdQnwoGvdqZlKY
	 6h6coACOvm9qulc1ltRaWjW4dF+PJ4Uzk+KMNJkP2zgR0rIEce5QnSurhFNcxFeqaN
	 XFffBNhzU7liOy603Dv4rH8VBIbzaSy8OgKncLwYdRWb4QG/9qKGeT4QPgkg1SoNMD
	 Th7ShakDILqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2CBC25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421372576.8647.4705205055184859320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa84e2770666570d7e51afc1e58f33a74b824a98295052be012993cbb56ccd84
Date: Fri, 20 Jan 2023 11:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674213725
