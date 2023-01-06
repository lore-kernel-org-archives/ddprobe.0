Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BB57B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DA6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672991487;
	bh=wWJxVn28VfC9AZ2vXGowFTSnQDv0tGpi/WDoQ0PYyeA=;
	h=To:Subject:From:Date:From;
	b=HaBAy9cU2kmc3CRfaEVh80l24hFde+y2xi75YhlrPvDA9RbFKF18sicQY7g7p+Khu
	 fzGcTNTrSwOUjlUNq/oYyXr/I4+aWPMxNgt79uEu1RHlUMAlkgQP2AEdJUmtCMOPzc
	 uY0+dBjrbGk2qHWhhNPR2GrPAkcGoFrYl1xeIYc1l+34/hdp3WYKIiNwBHwoF86c2w
	 a+OppoMbGjyeBvEtG5n+EKKibWgDf4ChCZSUXpT/3qVUkJRITdV/AHdZfJqRHrhej7
	 hbJY5qun4mZ0Wl3B17Omuzmx1wYlBWadCGvghRRXfoUEieu8NH5VyMbW9/WPCwP+BK
	 yHtJyBKbNg+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A7AC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299148742.22267.17557918151047899852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cc0536ad707e72fba5ce97296942baa5bcda56588beaef3c84812da940db44
Date: Fri, 06 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672991487
