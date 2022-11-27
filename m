Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE73917C3
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 808AEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669510254;
	bh=aVSD58tBD/zBwPpBMvOI5L3/a9xXhglg04vkjO6JVPk=;
	h=To:Subject:From:Date:From;
	b=sLiA4BCO0fYYCOL/9qXPeJVnUYJLODf16TMts9lAion37GpMEsNJ5H1s9PZSvluJp
	 5vk/G8ss0vX49oH0tZzM/gUlzZ+/ADq60ox+fr2sShmH8pnkZQVfQODsmLNwQ7FLuS
	 C/w3TRnoPK+T7DR2Lhj9xJRA5tgqQKA9KnJ8W/H3LSbAJUUDj8pPLug+cChtxD9Jzg
	 qBMNBKyU9mzypYE37V+cz9PSKYxALvCuyE6m/nHvQ1aFoCB3nXO0baFxBV4CYZf3S8
	 qgII/oLZ4ujv0Ci5/lq9sj+xDnlRxTk1fw3YqdbYu79mS372JgaBqVjTkH+igc7DmE
	 UFp9GA7rB8Rqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604BBC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951025436.8923.12765550218944536526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd0e3a820ea74b19d16949bb8c9bf8741a593705dc1077ef0987fb681c6eb3f
Date: Sun, 27 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669510254
