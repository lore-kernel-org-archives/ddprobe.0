Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1EA7E4
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 03:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F26C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 03:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691636588;
	bh=Pc1cI96oJfi1vi2uGwaq4BvoLz0ybYNZ0IV/gYmkqgw=;
	h=To:Subject:From:Date:From;
	b=jFpafmdPEU8itVaig6mGbhWCKJGYNJ/vbRuuNthrhrXVMO0RX+cj2KWNqQYg1/JBz
	 wpArfnTuYm71QJA5ByRK7HKYDq35D8ibuProGr5lqmDModBgVsHmd4rgPVhvmB2w8T
	 Z8EeXtd9TH0B8Y2M8gq/hJEsHo6aZrHiVEZtO9wsKa0SmxKPqoVuHPao6WbBwupM7C
	 j5nsJKJ/84X7ZHsBQ89x9cgjL3o/gFA8SZHp8suBYSs0LK4D0x05/GQK7XcP9OFBwV
	 fuXoi0qZd/E70haqkkiAIs6O+P1d8GdQhMGREDoo3aOrAxsDZ0pgsxqQ060ZjeaZN9
	 +1TCzjOPdgtbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5334C001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 03:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169163658872.14907.17396860594036558917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58ff084b3d9f62adb70ab33f0045726d9d4ca79cc212288c9b01b0183d491d4
Date: Thu, 10 Aug 2023 03:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691636588
