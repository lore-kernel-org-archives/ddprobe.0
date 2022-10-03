Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B936E7B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC5CC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664830253;
	bh=bjdh7VP4hi8X0/tr0fkBndPm1hqfRlfik4j1j7XJYUc=;
	h=To:Subject:From:Date:From;
	b=DrAO9onp3sdHI8yxY2AuhyFZtROsz9kwaYcHvEb9eaj4YStUZ44BMp+J++Nr3iids
	 uDoKS9R9JxEj5ixS/vnLcKqoSQ/15m4aTAapeLLYmq6A07tZG5wXIdXsarP2kPKZnX
	 f6LuNaMCnAdWFoh/Ekh/4pe6nt0ELtb+q2sz8P44IcDsEMLq9viFOpBovDZpCZ20Lv
	 zy0qhGcJws01xfJDqBqJp1SuPPTIM4uvDiChe6mMuI2TAN7cJwsJeqCcKeidcBHj3z
	 mDb0rNGfL+ObQ5XBHHGAVJhNKoVS43zT2MgdMA2Vt1+OAGW1CxBkt04HIRT+SnjcWZ
	 +5UZjONRkdrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F505C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483025331.30508.10042784638236395013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444ae17968133e26db850092ed22ee2221836dec2f44c124eb460e9f50f4a01f
Date: Mon, 03 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664830253
