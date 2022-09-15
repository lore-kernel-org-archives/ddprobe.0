Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD374C7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EF3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663273253;
	bh=y/K/6DUlULGipuoBDSqTNJ0pVRZiND6D5GD3jIVqN1w=;
	h=To:Subject:From:Date:From;
	b=p/mC9+5niREcsApEXeFNnlFfi2Bi6GHdqQQQpKpJ12kOtvxLrBu7eMpJHWG2uNYAb
	 I9ymTjjNOgC38oipSr2wpnd3N7svp41p51p5vDFmAhR+BJ38RIATyZo+zPwX2hzOUI
	 wjUKI41oyyjn/WJ8ziIuxOU6rO4KQ01O/wIxYOOoN3+hs1hGOK1JoiQeM/gnGyV52d
	 jXGFM/m1zBjhNDI7Zh6uc6O1rmoaRFW47OblCNKQ61K0+k4PQhAgQtMKVhIgZDffib
	 GY35zhMJpuyQFWcRXCgMwewJg0OoMafTAUAFJ2j6ksU2sZiRl72rNHVzC/z7lp/btz
	 zvZKbxLadpjuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF03ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327325336.12469.7070596972766613744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaa0c07447212485e82b1e42b6849ddd0f25ff4df55b1c39d37b04586d86529
Date: Thu, 15 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663273253
