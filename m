Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C137F4
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D47C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687033808;
	bh=3dRtjvZPVn9cX1yMBid8EFdVBrRDgQqA5Eq61zz1oPQ=;
	h=To:Subject:From:Date:From;
	b=SU+V9OyK2gAAIWCtKa7rXF23tls3OBixvT76PVp/stSooWL7hGUJdJT9mE7POV+Tf
	 GnJVPCd9Jzkl1DC/5mu1DBqajYNgd07gnzG8e+oHV1cMUiAo+Pecdn3iYZR0N56huw
	 Xf4C3TltOP+Sw1+gOs3YX/7WPiKbte1czm9sDfLdjod+7KqdDwsGJ4GUx9vP/WGoyj
	 jY45xqP8mCvTByYAiWqLkReD8bZ5REOa2oIcdnNB0wdjpuOQsQfTbyLzx+bEFyInMt
	 1RTraKEpp09srG6tBLUwgPdYYz5lXgUuEYdzUYsgxc99fnryzRUHebgEKjFNvGT8YE
	 Jk/bioa0VJQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ED9EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 20:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168703380867.16325.1750840283031860856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb8859d070c8be215203390ab7541f0fa95df79cc509db1b0f42abd713916ef
Date: Sat, 17 Jun 2023 20:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687033808
