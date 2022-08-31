Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE377E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C449C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661937653;
	bh=PBXVsr857wyg0RTGah80FP6ccfPxkPXls+xUFaB/pjs=;
	h=To:Subject:From:Date:From;
	b=k3vEIPCWiR7jehW7773gAeCCh99xZHARjc0RV06Tf6Re8Wmvn7pna6ZgnGFS7Iol1
	 9ksWIrTl5fk6pOf8zIGCGRPmeKwggSGUW/5VY8gCmAzX8h5K8KiIjqxXt63e07Env7
	 Mmt30ys7FmIigRxEDBT6R9jRG0+fKQw+DfF3Zwp6G9L0N2tcfIqZ6xu6LpqfTqW7YT
	 bVY6x9mjKYkDg2JHW1C0wL+pjR7QgN0oVn9O2CKJqC/6VIWwH2fepBY3GhmN0sEjiQ
	 +3Alkc9+MAAqIbBGZRI45Tx975anw4T9I+dOF0wXix1rzTS2m0d4pkkP++twb0qDOD
	 RfUr7mdnJN/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EF9ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193765332.6135.176230394337049807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d575a5c141923d98b14f18912e72453da43669273ca81251340a05c4da6f8ea
Date: Wed, 31 Aug 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661937653
