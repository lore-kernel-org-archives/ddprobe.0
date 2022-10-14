Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D808F3205
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C27C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665761453;
	bh=6enLJx8pjDaWr0NH4hMHjaCz+OKs1BlVT5JAgBJk9sM=;
	h=To:Subject:From:Date:From;
	b=nIh48QH6yB5mK9g9LeqFeHATZtCwcr1dlCzYX3wqAtsoZFOw6nDwzyHzNvXUUdqBj
	 4IH2KIyDZ8KLNX1L60ImBapOC7uo/WKczol85mYFYMMVYFmL2jwYueCzRDJXQpNpX8
	 iq6MA8VsVGL7f5v+r1heMU6oN4LlUe+fWeNqWhQc62guILlFvX/IKGHpHxgCyTwCvz
	 2e4OBssO3nVgXHHUAoc5UxrbLDq3FvEMMU+g9dvJ5SOVFJMF6VswjuAbNe6LsriUZy
	 TrVbZU4nlMqSspw44fnwWzXi4qiK0s23S0/IYAWO6Ls8ZCT/jDqwRoHvIFRvlb8QaE
	 9oPc3W9tZku6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57252C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576145334.26440.12718296768647358245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d371ecf20c708b023a00f22f289032c3e34f45d129f43f8182d307d69e681b
Date: Fri, 14 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665761453
