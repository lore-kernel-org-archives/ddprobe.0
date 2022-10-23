Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69E9160
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72CCEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666483853;
	bh=TxJMiMaR0lPycP2izv2cJnMOWvOeF9lU+kqvMm1XWgw=;
	h=To:Subject:From:Date:From;
	b=tlEAK2PcYybCeODyv4WEa4iQ5B9ilPivWxV2WqdVgEp4XmP2DjmUENZ3VfFV0LKCa
	 ByIV4g/m6en0tcYGnifllqqfHQXIlOYnHd0CnQ6DkCd0zCV3Qf4kWqkWac8hLMqUZD
	 HsfPcnh1usIcl4lw5HXLbEQNRr21nsTB6P/DMwQJhY9sRzROBFLJKYpXTYZjhZw8ys
	 wVIIixQYOhrEYX7Kwpu3R62XFDliBHJiZbkqbDbrI+bsLiVFvMYEgBIhztHh7k/Vn2
	 C/u9FGHIbQ1NnDYm33u8KvsEj/PoTqZQX6qnUoY/hOV702HuP2XhmZBkpCtgas9GHr
	 qVtqw0dO/tYBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518C6C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648385332.6690.5985153282914489901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48343502399a43f99971adac90cdba7006fa86c56a52c46439326b35735e1b1
Date: Sun, 23 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666483853
