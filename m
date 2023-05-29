Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370DE28E7
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFDEC4339B
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685392325;
	bh=cOK2VB1I+XER6hgOqUkKTldo2bqPRfJzg6sqbfotzvY=;
	h=To:Subject:From:Date:From;
	b=GoMn4IoXKjcq3F5RCr46I5DK/2/FPTsQInKnW7rdVdev3/+QF++FQihJBA4l9DnxQ
	 SQuSFrDKsRg455mTdOKITmGLOGcknl/673+73W+wK7Ol4dIAA4kTrtEtoBqibtgZYP
	 0yQUwMdfwkhfVxNr/h4e9TdwU5NGBv04PCv7hcbyAoFdfOy3IJ8I5GsGtcIIQlxYpz
	 bZ6FEv4tKW35oR9AAZylJmErA4QqEJGlT7dNGbnFqKHQNaE4LJnhbihjUGTZ9l3DMx
	 mnS+a/wbMRC4zlb/R8cjCVfQKVqFBq3TOmkH+wEarpsdU++llUQgQQxwUe1cc14dB+
	 rmoiUvo6pKg8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D3BC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 20:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168539232572.14794.12333752427952834627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc1979567945513c08c44faa83a6fe72d19ee54732ca01a36be21952d8e768a
Date: Mon, 29 May 2023 20:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685392325
