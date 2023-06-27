Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C51C171C5
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687872188;
	bh=3zg+vMLIe/uTyg0VKdCTm29bsl4171PY8/aM3xrA/nQ=;
	h=To:Subject:From:Date:From;
	b=FqCILCqnlFGtN7A4qPE5IiSLhRLCmTkSBooZ9EloiB1Od1k3kZRd4qnm8N44MAKk6
	 THcuLAG1PVCT/OSA8iKQMxQ+BlK0JOIupDMqESGlwX3UUjdUHkQumryEg/ibft5Yoa
	 CBnqybaf0UoX9O3zsTJLdsmk1W+IVHwqquTxyrQqUKbqyp1FjG4OPejo4RC/QIWkmb
	 7j/fMm1w+s+CFB5uA0EXnfUeGp0unpTS4XgPhJZotOAvgAgJtORZuQyV9usDe/sSNf
	 v7BdzWOXeMhhC+3aqP66lXDRlEs6Kw7bHGvead1Aha6lx2Z7J+NJ7p0Ed5evNQ+aMz
	 GThbFfOBr5L0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A377DEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 13:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787218866.10021.1638354760832263630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210dd5e03290819736026c8efaae2d3e22d02bde01b8624e91cf8011df856cf9
Date: Tue, 27 Jun 2023 13:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687872188
