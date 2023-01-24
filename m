Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515B63BF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DC6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674569585;
	bh=3TnvKIbymDcb2B2qKGMkQkgadcfIDTtRpgXwXJ8Z2uY=;
	h=To:Subject:From:Date:From;
	b=MjoCEPr+2mqfiLA/2ug5qREJEqg1QZneGGJB0Y/faMlckH2oGSP/LwU4NMIqJ9mjr
	 nRMR5ZYdB30cFgw0PdAWSsFzFxbtw/vPXJkRiPgQC5SlpMv7nxJPJ1O23DzBwx3zPb
	 W0uRGfiiyXBSTeTjEMCgE/hEHfAlNZaF3nbiJTl0xgh5gjtF5oJnXKk4l85vRyNeJR
	 CJTWKB621PAcSdaaj+0KlljjIdjwkAhvnHha+s2i+oEoyPbTNFQ/G9IrhkcJlQsWP5
	 6MHiPgyNWbuyRbc0mv33Zc0kJOo7j+oaSC8bzqM1iZ4i2cbAvKDjZ9rh38yiuCcruX
	 g0uPb86fmFHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9B6C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456958576.16157.10105223207577663453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc675d4f72b0d2ccba7bb54c59f985f18795dcd70d1efc5cd44ffe1286b43fa7
Date: Tue, 24 Jan 2023 14:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674569585
