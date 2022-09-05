Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F883C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694F2C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662369653;
	bh=qzFjxWz0f8BR5HJvMUYwoLrUzvINTaAi2/eUzo/RDuA=;
	h=To:Subject:From:Date:From;
	b=fQAn4wDiQOxYPZTVnCuPtIB/2YuugTJvdKFonb+YofFniCsChGZSSU92mXtIrxgGf
	 qnfKBqUBezbScRWVLYzIj4x5fnjM4O0y4ktjVkdvdpfSBB8McJYgrCrnXSOVtUSII/
	 tb1LvpS/63HODFxjXGpW/ku3zDwze98uibe8CLZTo2i0mMu2EBn7aj0EVTF7mxcZwB
	 3elLzN2uQBV4I0lWzaztKh+15ZDNu0+gnizoj7AvdLNOA9zaIxdHWLU+H3x8K3T+Ik
	 YyYhJohgNSmAI+5WoF93aIZtaQu2LhmPkjRbtx2uG/PdGbixzwSEXz20G9y6iF6JnO
	 /zs2PufW8ZuQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DB0ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236965332.27746.14453609037870411590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab45bfa4dfaf422c283de9f1bf0ea7ace69805d9bc5ba90c50b06e1735134c8c
Date: Mon, 05 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662369653
