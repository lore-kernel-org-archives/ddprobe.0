Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3587B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 19:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7DCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 19:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678563365;
	bh=pzvw39OalI9t/SB/voSFOd+vW1rmUxjnYWa57ntMYb0=;
	h=To:Subject:From:Date:From;
	b=toAMUMdTnqHB45ia6YOssk12eURUXcXR710yx+NwGnRQu/nu5S0s3fWDxDBO3VW2G
	 FXy8OHY5sGrSd7kUGGwTnqmJxi1yUdEa6JIa6skT89JAy4a9eh3uC6H1wREHQ9gwFi
	 Gdvgcs70xDKTd8wNlZ7BHeO9xy7WtrEl7Pcy0i3EnxeDY41JA2aum4Eu2MofYWFms0
	 G8xFSCifuGK919H0IH6+gyAmq6f68Pj5NczgclS1w3yMU4ZQJ7uVQOYPkuQf2dSVZv
	 7B3yXBU45D7Lp5ceD7eW+8MwzOkMV+IGQFCzjk54XrzDB+VQPfqCfx/uXTXs/Q0+ea
	 avAvJbDrOYN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B63C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 19:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167856336578.737.2944771556810569110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041b1f5151788f40a25ec45b1dd5e60a2e8f10faf613c6d9c39b50e0a1d7a6e6
Date: Sat, 11 Mar 2023 19:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678563365
