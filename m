Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3F4362
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA21C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664237453;
	bh=N7fnE2eGZ7Lxdpbn7dc0hgIs8b/P7h3MEVDuI3+BwEc=;
	h=To:Subject:From:Date:From;
	b=cZGbNJlAywtr5tb+cSyomzsA5J5Ax/zYcoloiyWChlW7bVUmqtNR+GFdcfIR/htk+
	 JsKcN9jIl4xHErfyqhq1+ydV8lsbfi5BZI+rp6TlGoXN/AhXyc3NbQmAo7m3kfVn1v
	 LjjuLKJALeqmqIgxCbYSh8kAIot8HNGp8qkjGs2toRgwOVbXXJRgwt1sgcXLEEbhNq
	 T+UkAoiBXVUxshLiEz8oZeNmHy0DFPz7tY4g9XaU2TW8duxhqSnKIGsUUFWcc1/2iw
	 89O+JQlklxPx7+9GedMrHKhqTMU7j3gMTR15lM/bXCLgqEOJXZs1KeqG77Axhd6umd
	 ZaFKv1yV7vBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53205C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423745333.16683.12876685433772579680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e7e48e08dfe314b5c291bcd4e8bd5e90c468e983ced938d41749524b1acc44
Date: Tue, 27 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664237453
