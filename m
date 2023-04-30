Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5459D17C2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB7DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682873766;
	bh=03Llux+C+OSBjLl/3fZZ9ub170bkijrCHY7zCIusN2Q=;
	h=To:Subject:From:Date:From;
	b=DXTszcMmJt2yfhkZy9E8h+pH/rNUcazMhHWQwsjyQCX4Qo4x9KCkp9EB4706sT2mn
	 O1vARmKPrCtZPEUwktaSCs+K3XFXYZYlEa/473T3W5/NujdUtUMjPWBFXDl+bRylBv
	 HfqnPqwec/cIgoGvg7gGvmC8TaOpzlBWd+0MlFSIcRjTF/fYejnNr5QiOHDSamIi43
	 j5pdu/zyDzhu6pH2I7P7Rz8gdttIndHVi2E2c6WA92wzWA0x4E7R4TkJbx37KCQTjJ
	 ohEPFz9ro6cUW+Yc1HpTVMJhOiOAzJxg7YNphDLx45JIqbL4GtBJt9BCMRl4AhTcVU
	 x5yrsrPPTGrtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBFAC77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168287376582.23348.4300564748814106694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890b5445b6031934a7ab09c1c57fb5823f678e0e1a3723bc898bf3d1fbd4c0ce
Date: Sun, 30 Apr 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682873765
