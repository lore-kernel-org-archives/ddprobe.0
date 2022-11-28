Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8A78BF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F06EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669644054;
	bh=I4tK2afDrDo+93rrZ1kvlF8oLnI7PT+PkAQDUpjg4nQ=;
	h=To:Subject:From:Date:From;
	b=plBjxiWr2Pnx6MY7OiTxrRKtG0qK2qB45FQ0coUFCgtRuNQOnNQKKaUtYntVm6LLh
	 aZsa/ielDlJcsH8hqmRUvWZY5onwzf7AGP8oqaAnMXkMYMAJ6NeEwF+PYFGq3ZlbMr
	 nFBZR/s3FqC73U2tFsL0EbnSmQLM5iCUZxdkTaTzSlpvdprdgkCuOBRdYdM8fU5qg0
	 xRZnYz8qaz73OtQgYgzC0fRROQPbm9xOJMaOW5HxlPG3ApJAstZRGMPYL6HbU557cB
	 DvksCaLgoBU/iC/8k5+rH21QlbEyRUr8/fAWtV8b3ZJDtxn997Q8BBXqb7VPkOfzzE
	 wZs1dtZKsyzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B2AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964405435.20957.13849920271952295991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045acce676d5965a8609a209f793f531ffbad17fed5aad4fdd3f01051bbad12e
Date: Mon, 28 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669644054
