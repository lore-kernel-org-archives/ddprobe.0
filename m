Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1846D17C8
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4FFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684287785;
	bh=8O2gA3CasBvwOsq/1VVwDhTC0xi2M4TWjaqDwcuS9iM=;
	h=To:Subject:From:Date:From;
	b=SCAs2S5N7/5WSOVwa7AvpeC/PodjnTu0NjtVt5T4Ns/PY5ZbZ9DlwIx4zRLMii9fA
	 0zqrZCVEFF1qNx6GIQHbN5GAm81m7XjHFG1HNY4xQ3Vx//hj/ulWYX5spQhz7d+zsK
	 2jHokj4oqKT1m0HrEdmEyZOtMd9x1huoSmG9HDjAhH1Ewr/Hb4mKIEVbE7mIYGQ+ub
	 lIySu+nw9mTWb7vVuIpgg6zHrH/EH+T++WihUZ3WCc1UXSTyYKEHCcZ9nAx3vejStQ
	 EW1/rG4TflUcrTnf7PFTFuPz8oEPWSNaq/s47m5IAnbpCt+eAjYMVLYGqGg7NR4wwn
	 2t4C1v2j9ImnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F72C77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168428778580.3762.6852800231086518125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675d90b9f32bbf9fd6ef1e01672382fc3f91b94cf1ede47ba6d7cbf473245bf4
Date: Wed, 17 May 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684287785
