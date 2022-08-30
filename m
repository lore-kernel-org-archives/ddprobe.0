Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EED33FF
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A7BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661874053;
	bh=zfmiEoesQfDwzjYnLxGEVFmenUSCXTptzgnYpmQIVwU=;
	h=To:Subject:From:Date:From;
	b=LTrzWQugHscCSWRShbq1kSSHBwYBqD3MtdjT63ZoFFhE437L/bwjMab6C+ekQ0Ee5
	 +Tci2KQVoMUfb4Q7XBwDbHBV0QJGwOC+ZkOJdtoyW5oyJpDeQqLovTJ/SV1CopQwAH
	 aJwWOGCIX70sHZCx10vkUZKXALtZwN6sIUwBm8Upji9FqE9+/BW0q7OBMQfkJ+afa/
	 fYoNTqQ/sYrur1PDRuIkXvM+TJ57nnmhVPSLnJEjx0PHJCOoJiw8/99wqTPKhpSJSo
	 7HrsiLthKV8IYEDup4eh+NqpHa33cJJC/zSG8LXfiRor8h87Pr/0vC4wTWPMMIDYoj
	 er4+Y/vgvU1mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B0FECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187405333.19684.9221805832438576365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca55d0439d193c7c745c91c39ae83aa668baf4e6dea0fa8510ef7087785691f
Date: Tue, 30 Aug 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661874053
