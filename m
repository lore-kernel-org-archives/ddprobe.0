Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD33117D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBFCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663221653;
	bh=FWa9M6Qow6MkGromoNc5VUJGRDwxVX5K2k4DXetwmYA=;
	h=To:Subject:From:Date:From;
	b=SCxqwdISNKDOxHgnVuLgABWxP6ihGDb/lpEakqMoCU2ksJm5+/JV2ZLUlOmplT4Gh
	 IlumRfv3PI6sZbnHcnWOmWCeS/wq3mKgkn9uH3B/Q2gSE3LU3waEAQcFX3OkDk2E1n
	 ThrffGWpGvBrYeqkyT9cSNRpbisDYjG5yffzbufT/S3g22xlQOeXxeFnJdfFhFXGc/
	 m9kEjJTo7ZppaaVEan+b3QYolqeh0UT1FYXgoILUX3zXjABs1MXdaLVESwAa1wAxXv
	 9zxwsBKhXbFba/U0+/BWHdTEHj9GexPWTZhRX9zQcMcC3CMsXjS7nOJhqXjQB+Jr34
	 IO3rGaAMBCPQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5060CECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166322165332.24505.16756614046647380247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d21f9e7a6b3fd6b5dbb1bd62db20efa6e436af421677643732fb128dc3e718
Date: Thu, 15 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663221653
