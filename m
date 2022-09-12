Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B490B7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF24C433B5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662975053;
	bh=Ow8no3kQ5HuNozKjo4qmOSvw4bAcaluYkTXO6bf3gDc=;
	h=To:Subject:From:Date:From;
	b=u2sdtl62a3pF2EufAJMlbvZSNkhkxJMLIG4YqcWueyAM2qYCNkfeFqWPsDX8UVuBw
	 0wkuTjhihKkracR+/cU3/vV/8ROSkS+wlpVDTGEn5SqCNZjt0Gjd+vFQnzyHwNK0V+
	 9ymnSQLUqSk3Wq6OCEsnQj7QuMjYtRHgzp/piArFEULYUUu9wP/G+JGYH6I5VFAsza
	 WGEkOa3Lq9DaK4tMEiWjxX6H94k49+Xc1M+HN1hQgkje0nB94B+gEDnFxoIzF6t5rf
	 LNr6RPUvDt0gCKzEcCUl9BY/f0Qmci/DS9XF3AP9xtCwWGNuUUfg2i8vAcsqOwlgm8
	 jdDapbdXZbq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5100BECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297505332.7031.16531415288722708189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d79492ab8c543e87dcb87b8fe820ff0b4a1135ed831fa70fe892263310bd2cb
Date: Mon, 12 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662975053
