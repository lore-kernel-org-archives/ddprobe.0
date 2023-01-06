Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3F47B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83264C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672994487;
	bh=NZmkOvFIjvJ8PhLsyX4U+rw8Oh4Jmd+ObqwTAickuM4=;
	h=To:Subject:From:Date:From;
	b=jvuL7rkHi7M1NFAWOPkUxB/y9Euze7rgP1ZHktK+XE7P6lY8eY9SmUhjzYB+DGklm
	 0okFfbUohuDUdO1f0z7Bwb1hZu5xOGYBoZjIyu+7DACsUMpVA7VqC6Bouv14zVvAX/
	 sNvxdxXtFh4OjJzYkgMdQhCgdH7ZjXtfLDDuHB2CE1F0nbwM1JHkryaGnMlRy1hnd0
	 lqmeyO/1LhjZIWu55761Z0VVUS6peniUN64Z5brrG++ShL+9YivafUq6zt0UIU3Dhq
	 I2YJe9SfnmEdvdZvO/96Wkg+li9mV83DDqtHtVfSMsISOW9cBb62Tc/oFAiVw+poQA
	 vhZgs9UYzw9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67509C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299448741.21784.4865782909031255711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d46827a9bc181d20eb92d3a33b5c7fdcc5e57b4b964c8ad976abf15e305e674
Date: Fri, 06 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672994487
