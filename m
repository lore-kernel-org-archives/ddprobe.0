Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F095250
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D009FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681156925;
	bh=j68yumENDNR+qRExDtgQ1pGkIcnHTAvHQxZ7hvUwHRE=;
	h=To:Subject:From:Date:From;
	b=r6Wmv/x9FKo3Jl72ffpWQlObyFoupAHv0EBd1D0H/gepFv3TtyJ3nlJ9kYUQVLLkc
	 iah/aV5yaMdIewwzqq5zi7fNf0ePvGXvxnkZgPFOrnPhw4vbuBySNHvS4Rkp85nL68
	 KgW8RRsokC7Y8/2CtQfeIknDvk2512KrktiEAxBL95zRG49Sw1KBEbYVkOpdX8gXZP
	 Ge0E+nctbDuXMWGcjO1u/TTTu7SHYCFmRJuOApGhrergD7NqQY+l+iOZnyIBKeeXy+
	 ubAVLMYwNigbss4lKu1UsAr5aS8t+DNjImJkSua2EBAXvOleZ3FmRettOIGAa++1iQ
	 AhCJ7drciaBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97ACC76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168115692575.23772.15277386189286772940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b70d4375a20bd5476a3e835905f15db66b475a171acd334aa1365e047073ae
Date: Mon, 10 Apr 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681156925
