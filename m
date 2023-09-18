Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E690134BD
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 07:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D00C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 07:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695023108;
	bh=oIrG9/kggShHH5GttmNGfl4YxzDi9Xs3r33uQwsGkAg=;
	h=To:Subject:From:Date:From;
	b=JnnqloALWSPNQsSo5Gr0Lf/XO+Bcvb7N/4ZCGpQM+eOLKyOAGR3ks/e1p1e7b76Fv
	 oNr1nciLhDUUhXu/ePZq+aiBk6PmyZBZM1yX/KQLvetKn8mJIG24DHCih4fiF1Xcgd
	 vqcjyUviDgM5jt//fqllCByWJrm8e0McX0LL9OKT3It5vzA7Rcsmml/mGlriOsP2uw
	 oIg25H0qEB1CB9gvhLnb0QVMU0A1g11pKqWpQYUGl3PbBdtZxq1QDvWUbMZAV+GVN3
	 0C7y8V0VtKWGcg+qky404frtwv/JncJw4MDv7iyIX7UcSOz4Xy/XVnd0xYAlin5ZIl
	 RnFO6ycLdAECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF38C46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 07:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169502310869.9423.2154707123551966603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7bdc9244bf563e2ffdeef8ea37e51ca6b881785a9dd6818c70e43a505be75e2
Date: Mon, 18 Sep 2023 07:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695023108
