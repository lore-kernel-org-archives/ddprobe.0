Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32741322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB79FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674604385;
	bh=Rn/POENxwY/Rpm/c8Qjuq1YT4KjEI/+pSuJE/AZcNYE=;
	h=To:Subject:From:Date:From;
	b=AVbAXqkdad1FO0Lh81cbDCtY0YumpBqnu6n4yZnnzafn+VNGXt51vHlqkdZ460TRM
	 gw1X6MWQTLhLn8UpWNfzhnfxFeDwMgKvBSRz7h9WC0WRbquOH53b0sQ3OWPANRgXDt
	 YkpjMLC9zU7JEdlkCgJR+uCiTYAC3gyypf0XyeU61teKpcD4RfFQRe5X3Uk3jSxvCW
	 11HvNioHI5yoDtj0G2hwXRxOHV0TFFBF992G+vOmpHvBzaWksfxQK0YDONFXpKKvME
	 uMcd67nQQwbwI89VGzla07Pc1fWhWeeyinjKOyRwBfg/lpNbrV83MqqY5c7N8tWpSb
	 UR0ZwLeOROx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A22C38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460438572.3870.15241760499275907139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0b0e015da6608eb483fd6a0caebe122556d0fb70cfd30575d5757e029e39c3
Date: Tue, 24 Jan 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674604385
