Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AF21C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83503C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670812287;
	bh=H5n9YBaaHhMN0y+tVjV8wa1A14Uuxm35oLEQlsaTuO0=;
	h=To:Subject:From:Date:From;
	b=uAPORqHqbJ5rDfuRFxa1ocjgjSAhS6JO6Cr6Uy4mBxiMGV88v2g/YtJ4SEEwtKWnS
	 GxvFRnoQHdrt57Kk0dohDzhAeZRD/x2H4DX3SSI83Bc9Ko66XEgeKaTgqnOUdwCh6q
	 j56QgBba1AbZnOeGArAfvXRrJDJzxxsu6gH3nMhovL0RmDLLbEdK+9wMHvhnDubJsr
	 97OfgVJ8ay77WJ2FUej+6hXKBYuR3KwpGWERN586Bl3oA/GC2OrkpUOUQ1SoLBQpkV
	 hdHAMkJzKcjR7ErCYb7DW9MOn2cuR6jBljoYX/OQSHCT8yL7ORvWqZytsQmT/8UvL8
	 CyYu/rVDurnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6291AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081228739.321.7960363663975477159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9ac895efbcb8034605a897a47a23bbabb48dddcd4f8cac66b6d79295bc88ff
Date: Mon, 12 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670812287
