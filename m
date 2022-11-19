Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9360630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 699ACC433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668842454;
	bh=l8AcIejrh9Hxno71xx0AL9AfyzPneAyDSXQXNAyj2qs=;
	h=To:Subject:From:Date:From;
	b=YQ7MQKDdwXK/0goobGElh6lE4/l4LlL60L+nPoIv7lMuuI9fqvMHsyg+5dNK12UhZ
	 yAqE0dKUaEoNr4K1S2VN8iE7AeVlrgtmmKsNdzshpoJlTnKGWNgg4GJR35Tt8OK5Qm
	 ZwDE/OB0nl/O3zH8poVwZkNuOY5VaYE3+MzcYUnf9//rizOJNURSsdSjx5D/6hIJAT
	 QQumNUnZYKaHveAaTWDst88nbJsHvF4EVCdKsNsTmDpBhP2/BC6fUJwm04XxpGXJNp
	 VIN3EoHT0CMUqcCI+Dintbhuw09W6aScaKxcRLT/zEbiAGll/Rj4ufldyQJa1/R8lw
	 ECzV/Z1EBD8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538B0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884245433.22437.13732191569104578383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3e9a76b5e2a4f4c0bc0d9b54855bee477c70c56bc657363080097990ad3ac8
Date: Sat, 19 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668842454
