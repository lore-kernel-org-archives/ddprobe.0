Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C8200B7
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BEBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683915905;
	bh=pPzs1fCAovAsWu1iDLuY2pfXtsOm0Jtd+gwwlJ5exbQ=;
	h=To:Subject:From:Date:From;
	b=iaB5zqElFGvCFdr+C740Wdp4zedyYfYNE/5JChfEqhRZdtB48uFK3muBZmShY3LPT
	 qfStEXUjIgyXTOc8aL8NxlcB3mhkHh0V319vwAU7wNiPBTRBsCa7NXBJ1zwkrRATBT
	 trNULR/zUv5FNfSsjRukWojBZJ3dPSX4tggLbtirSNnjO9WTO6LK4dclJfUkbzNmY2
	 Azff8PgkMdDSLdFx+dUaq6RZjGGofsUrkmRjq5qkF3cPYkBjr1fm9HbBq0zw/JDFBJ
	 fwrmSz5zdsFmdS/K2/jMf1qhjE4o2x+/Q32db2K/k5Jjk2MIHdSjpZkykLDHRifrjZ
	 DbUlIJEmT1w8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACBBC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391590575.9642.9786502941682023964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f656ccb26800f8130eba0d0ac16c18ca3d7da96484fe05e20d1c931ac5f52a90
Date: Fri, 12 May 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683915905
