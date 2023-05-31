Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301C710E1
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D500AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685497385;
	bh=gQ8h6xoEQiFJAOv00BZcmeK/z42Y/j+SeMrFzqIMHRw=;
	h=To:Subject:From:Date:From;
	b=KA1JM2U/mMHm5GnQFplKJh2kDWVP60g5C9bzPnbF7hQWxEw5SwODebl4QzeuK3Yif
	 dpHzKa/Z5mRicn9iBmh28FzvAaA+TpHC16eaEWPqCBMPEr3QW5UELxpI7dnXohSnc/
	 lCNYFsdHlHyEZhmNS2mfjFx3v5olK8dtugwJJm27mKqLF2kofbWnu1BsTvVKv1S+zt
	 Jws1AZYnwj7hMzKCD0fiPu57Jq2Ew/OLP79onzqcQHJsC47vtVVo8PVBE9lpYRlXsB
	 +dBmHvcNA8Mw/6I5IrCpKfJqBH7Cx3UIKP6ztt0BG/DWGt9Axsvpj6qSOHJ6RRl0Ur
	 kWfT15jN0FFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAA7C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168549738576.24669.15465488723184865022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ea8d32d3fb1d38815dd0482915f5a92557f4d70b34589c542b6e6608d628c8
Date: Wed, 31 May 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685497385
