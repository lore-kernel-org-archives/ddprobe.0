Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D2E1C16
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 871DBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670763087;
	bh=VDXI4r3hP3r7pNBtVfE4qjatktmAbttNjccR0dCWoIY=;
	h=To:Subject:From:Date:From;
	b=LzFopsJZ93kW6ECfIZcDvTjJ+PKD8m8Sn5jCuYn5C4TPlNKforA0B2EyYbIbB2L+7
	 FCNoPFU+UOhwuO05DViAfMTPvhA+LUtrN0x14v6Qawup7Uf+0f5O66ohw8ZQhMUb8M
	 jicYgXpnW7cQKXmVu7SMGiuxWtVJDO/ICbaYaRJ88aE0GIqLI2MTevxVZnsKC2RF68
	 1yC8sqwx+Y/EMU7VbBYpSIfPhHoou/RXzhP4iCP70JE3jUKOSvZv9KOuRkmPntJkJR
	 RIUbTyo2smU86V7Sdi3lFVe9CqvrG4p/YbyVXucLl3FHLcVl+YQBu1Z+cLh3r2iU+Z
	 9RE2Hepiro2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6872DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076308741.22659.5513526370648801917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e452856e320dd2c0c3793b49f09e8190f853470f74f8b91563be890b2da75db
Date: Sun, 11 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670763087
