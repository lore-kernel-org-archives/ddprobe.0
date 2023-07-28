Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5966A134A2
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17C9C433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690546928;
	bh=NhZhjYrVz+AzBaF+7e79syt6Eec+ova/bq68norX0sQ=;
	h=To:Subject:From:Date:From;
	b=PAVGYPaKFaTKOJAk9w6D2lXa8Tpqfkw7i0vrI5AUhBVZm41cYkcAvOFcwVQ32qhF6
	 Pa51WD0kco2ntVu4q05UWZYEaYINAvxNH5UwKPLjPW4wsDUhv0bO0rYjsv6EDXmUWE
	 VxCsrV2Bbe+eZ9M98Y3EVJUQNyN651pCCHjU38fBqWJIytrtDp5hZJoUhnZHPtRTre
	 XL9Ri6edjg7HqQ7MJXUfWfnRh3HVw5uai2E7eDChalKJknFA204Oq6Aekg1qI4rn+f
	 1UIJZ8Z84CLd1T2NAAfUtGTT/t/E26pEU4G7UM1BPKzgZN7BNmZAYXYLPByxIkv3ZJ
	 XxVUJ2qAoGnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CB4C00528
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054692872.26365.3905679099115163822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da360168fa998ac246e5ca1809983206497f7480fa1009631cbc573be0ffac65
Date: Fri, 28 Jul 2023 12:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690546928
