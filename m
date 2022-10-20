Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C248115B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDC2C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666247453;
	bh=DpVN/P0dWj3EyOcpcUqrSFGUfYskmNmtk+PbfLSnydM=;
	h=To:Subject:From:Date:From;
	b=hGi5uCKBP5oJh0iwpEb6+81b5z8m7dwtf4OA5IJYXtErhTnb8VUqRNby4i5r9mdZf
	 ZdN5V8VhxQVTdtnfT6w/sGc+Z0kk0O+QkafQMOr+4Ug1DIhb5vXZTWbAMBSI0asNcH
	 SzqbZYxG8/QE5FR+tORpNhsXfFDS3uMS1EdV1k0oj8wdatHzQ/y6N6chZKUpFWzO6x
	 ZI7lE7wjdNyzg08jlsB1i43ogLyiBsAj2G5D5IgCMdiFPDkGvBnL0w4MGsgylm2jdu
	 ZKIHxjniUBtrHy1cdvINz6Q5N7No5lfYz1L8T+eb9DjYWuEO+sTg8LoJDPbL8hf4N4
	 8fF6oyXMNmHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519BAC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166624745332.14272.14610158737091507089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7af5dabb2cce4db0b020be420274f53940b701a3995ccdbafc51d34b2b94835
Date: Thu, 20 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666247453
