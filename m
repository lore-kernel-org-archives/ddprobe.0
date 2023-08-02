Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ACB7E
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5534C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690940528;
	bh=9XVKPzljWLXFE2fMtJVefpuNwmotAeqrItvWqI7WNTY=;
	h=To:Subject:From:Date:From;
	b=ojfxXlCXhj655A6Ia6vPJdj/YOtlNEfXch6Vslw5guptlJ3PwX5Y89NGDyyGyp28w
	 XQ/mSWCYN5NxmLCJKkh7unvEkaz7MPTPzqO298jIWz9gD4ejW1fmpDaCWY0Duglwra
	 EhSWkKmjAJrwFridT/e6akug9gd7wTxAD7mc0ugnNehculEJLRffhwbHIH7x2+ReJ8
	 ZWPYklU0x03aEMnbXffWKPYaZxP+FLIJSl3rJUdJAV+2tdwTD3MEpMQega4gbeapCo
	 bDF63XX/2cV04AMX4HaDPVCbLxHcSakCrkn5yKOJd7i3v9Vcds4kkJ8P8sWkxwVtJX
	 Ua7HwAN/Y3zng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A859EC001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169094052868.30996.13046999434526793928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6c16d24f3cf379762251c12ca4ca6942165fb37ad9beee519f27690546c9c3
Date: Wed, 02 Aug 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690940528
