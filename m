Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB181C28
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 03:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA56C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 03:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689306668;
	bh=CeSigGQlu7a9mEVI/rNeDHnso1HzVkRJhOpxcyNIHPA=;
	h=To:Subject:From:Date:From;
	b=FSDWpOMGCRr+cLcockntU5V/Y/nSygvURYU4Dk9wC1/9FE3YA2xjJh7o++SQggIbD
	 Iv2Rsn1Y2d56FTLF/gEQ1Bqncawtb9rVz/mS9cfRNIGy0FCctseW5N+/EyMgbdMb+X
	 OsanQ8jhqdsytxqZzmqdAfdanuv09XiWBYztBaz8UL4BimGTZHoGZFrQcaC7okIVKr
	 asEOY3AqEJWS63zFn88B7j8X6zVc5zaOVPQQwTv2KpakMpR+9jqdS+8C3FFt1x9FN4
	 NxlzSkVk+Bw+LsYp1v+8q0zcAFxCU0EhuvUN+aA6PRrTNt66HYSB0q+UAfPXXBK9sh
	 Zl8pzqVaKY5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7A9EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 03:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168930666877.6657.2637246248932113723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d128a501abe9a43745a53bdcd7736011de574cc4bb76aa08010df8a1d5d71eb
Date: Fri, 14 Jul 2023 03:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689306668
