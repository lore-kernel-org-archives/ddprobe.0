Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7F1C135
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 05:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdB2IqqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A36C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697521628;
	bh=CJ7BCpa4Q+8Ul5ozZfLiHwxvrnY6JsDfs/F7UzjrjqY=;
	h=To:Subject:From:Date:From;
	b=PdB2IqqTIhF+T2PAfMYKJi/0A5Ijw/dxS8D9xT9PWSgrBz+HPlWqwpnOcc7bd2TZA
	 JnmSWSi/NAyoxlLtFS49UFUN1l+NbJbAvcSaN310rD0BRSIGIQ0ioi2Wjo+Vhiw1kg
	 4k9/hPCF+acTlLsxPigji0cmw7tfTc32vvL1HsJZY1Qbe01zeq0PffK5UZvt7e5YWv
	 u5s9dTWO/w5P8Z3wtrIqiHVK1G8LqEV7a7UEKrYTonC+dCgtc0o05y+8W2UXFF5lUc
	 PaRU4MSy2T13j4Y4qXekm2r+fOCvnoOh94BOoG+WmlIwDtMLLix4H+5K6pMLriwT4I
	 TVlFayLLyhJCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5891CDB483
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752162866.32081.11436853640008505878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae24415698bd067a343ccf2e75f4ece19909069fccffb89e277e95f76aedca8f
Date: Tue, 17 Oct 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697521628
