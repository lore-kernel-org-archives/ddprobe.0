Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D35BA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96231C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672873887;
	bh=v/8OtUX6yy4y0fTWb7W9Gl1L+AfZvRRsJi4YUZTcyPo=;
	h=To:Subject:From:Date:From;
	b=pHpsw9X+pPkD/dCDD31pIYPbdpfkPdsgljOj3glyERkDHV5xf3p4Yk9weNL3n57Sl
	 YQWMleCUhmj6c7N2wXhX0vBLzhQrusKhwjdy61Y+SrjuY1Rgm1nGlKVyrtZvknirF3
	 I04aytj756Wo09/7Zjb9EdV5LfzvZYo7yRsZ7UMbTbAzGqhORzpEylc3XzixP5HVPL
	 ITFvkoRK0BmexsrRx4ucUyml2fLnV6E5ctqi1cFO8dGVlXB/VscTCukSRShRyARVEu
	 hvV9UDmzTuUgjZWa6r/hj3s1dNMhRzNP24Zf/EHNAe9xk18EGc15dp8n8PpscQgL8G
	 EHWULlGeuMKRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6868DC54EBC
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287388742.20975.2281710466994555229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a98721915a7a50b938fab1bd1e01789d02c53c92918887099dcec5c497d295
Date: Wed, 04 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672873887
