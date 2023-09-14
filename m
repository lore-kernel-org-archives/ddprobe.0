Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513CB28E2F
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 15:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1E3C433C9
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 15:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694706908;
	bh=FfUF2c2rP2+qi1sCMqdnPUaxx8sXE3Bd6RgM+tU1+9w=;
	h=To:Subject:From:Date:From;
	b=Cybj6pQ+bfSVbnM0OwYlQBepWQEMpE5FOTAEKocWUltlHr4WyFFdcFSPOO95e6Nv4
	 8e0OwoUxYJcXon4+mwX0ypVwd+yXlLNxHBcBVHhLAxZmROb5C8p3vD54+AAX8isyA8
	 1iYLfm7W5Mc9jZ2LsbQ0qhGSzivt6qYcsVyol4TQ0hXPsTqoiWicAT8GrJ9uFnMrN0
	 eNQSsApcY3ejS364S/WxG46A/Cv6B8L64c4epDcDwq+MW8UJRDntzQbAnspr4xFM8M
	 gL4jovqzNzzVpgrg710LAJKZNBwbloYACrkL2iIwTGMtaWEeYR1Q81aL2J8vJDCbJ2
	 qujqb78ps2DBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E9EEAA53
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 15:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169470690869.14796.15559945591840407464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa998ee1b0a6f4dbccd8a5cec1bc7fc69cab706199b3fd929c64960cd66d14d
Date: Thu, 14 Sep 2023 15:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694706908
