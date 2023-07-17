Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F3AD2FA
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADA0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689631868;
	bh=YjGFrqzH6DpDDSzqQvpquBWOmtbd/eBV2Yt5LjVihiI=;
	h=To:Subject:From:Date:From;
	b=VFI8lHU8BzoCRC7N7Bck0ym5OZAfwMQ5d84/cuO08YQ49J98gztYKG2oKsBQ8SoQO
	 lG+TCFCsA8W36cUazqsVpwZq5I7FyrxXDOfqZ2CdRvt4FePIb5yr43wD3HLXT5V1G6
	 qqpqrjDRy70BGD94mn/8O4kWEIzfewWPQhyvG0+G01kxvp3VKjp4sZKWNp87Cg2iNt
	 Iq6P81fZSd8V81ZDTIj1Ob0Dny81XV0rkq7xEpz0kZTYDzRD8VBNC9TkPfcus1MRNy
	 YUdjDl3kmNnxwDwpuPKnphFAHWDEAgM7dRUTSH/DiTM3xDuD98XIVOhEqeOslFM3oM
	 JBvqTgtR979xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB308EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168963186867.1212.9236686492600177008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf0e757384b13c5c79786985872be9217115aca54c24335f4f3fe0d81a254eb
Date: Mon, 17 Jul 2023 22:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689631868
