Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A427B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BBDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664056853;
	bh=YiWBDJ3qHCi/+tiF8OREnmLiIgvyYLSTgxyoNXoxW8c=;
	h=To:Subject:From:Date:From;
	b=AqZm5pyQcUqHO4HKiL++BNb68ojzukpOTgszne8gTvrWEvX4lXRhZ0+4IgUQODRpM
	 lYEBcCSrM9bX/uG3qzALDNMjwJcaeBi/ad08jna+RWONkSYBB1rurAQcwXYFewqh3H
	 CrsLNeoNmV2sb0pPNMPbQVX4doqQX6frkgPQq2/HQr3xGoJJ/KJisKgTe2RJuyBMdE
	 HQO+5EREw8noZhhW15KOdaQRCH5R4ohiQ+6+b014yp/oTeXQAXN7ogIxmdPKeOkHfE
	 F2wLpsKzHczIztHx3zZeuRaKNwkQ0yDIeCl3JHuzMEgkp5Mp1xd9PnW4EfqAo9AV5O
	 YcPcUjZU/xYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560AAC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405685332.3260.1102920835217767378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29278ce60dbd28a454f32e507666257398a0f08087bfba0cb6a9fddfe158a86
Date: Sat, 24 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664056853
