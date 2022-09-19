Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DCF7E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7F7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663548053;
	bh=R5asc6VNHtIpr7yn8yX70xKWcPA8/+If+9fOY+KpGCE=;
	h=To:Subject:From:Date:From;
	b=j5yPnqtNqzxZjaFUtYtQbKGqCi57xb11EF0075kYVnXpvOIe8+0+G/EAnKFS6Nnwh
	 tHhDL46IHfFvKVtMvA5fbcKfBoJIm3iV64dqFYzNNYILQyB/HcYpj/GrwBRE2zpLjW
	 XbfzV9HSMQiXGfbI7kWUxm6vuUF7Z8IqSg0j1v2ABFzb9+acuywlWFZykw+TXjGDX5
	 kYVvGjQorKEhNG6Ez7lTQIm/S0xx+UOQXe4GpkJz22Au4Dodx1f3L6NrLO8QJql40j
	 xsO13Lq/o7o1M63782Q5ZIFHpXpJ0iGNOMkQjpoDa7LwSo28AU2dHa89zC3JPi5pYl
	 0qeWiIFkmf6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E7BECAAD8
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354805332.23459.9287495692909985019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c58c244ab6fa866da3d1a51eeabe123e85f2eb8426e6bfae56bce7da678862
Date: Mon, 19 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663548053
