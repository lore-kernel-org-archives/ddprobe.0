Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA80A7B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FE6C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664763653;
	bh=WyT0sbRms63v2F36hHkX8ZGlYqi0YhBEg8CmSb6FFik=;
	h=To:Subject:From:Date:From;
	b=glu3L9rrRrSxzlfHPHYICEGg2QYyeori8hf24p7jxuhmFvCeZ7kLGXNJjhg6k9XyQ
	 ZCHU2mKOL8rUrNzmt0mjYucBVv3B3O0bWZpjnY9w4UhqR0UnKrvmVmQuohqmGvHQe1
	 5V/APa7XRUATuNHNfAHJe/tcsHPxO+muU8mNCNARcR6lC/K/00SdIFf+CzU9w2zy//
	 FtAOMj6S7IklTKotOeJd6uC6Qhl1mOWloJ70bZoqd/Z5F7B9iXYt4DQjwQHAQwmEs8
	 o5v3KNbw9JZSfVxRRz1nMkSCh1eHfS6q3YzpmHEk8x4AUV9vU/0hqURepEfdxsfUX2
	 cAkQvW9Ao7jhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59701C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476365332.3652.4990069610052211781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d98a9c9e2b8aa9fa1bc98e21c90c760093571a20c01610e490800b985c5999
Date: Mon, 03 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664763653
