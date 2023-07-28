Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECA4101FE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F88C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690549928;
	bh=ETdPuJc7qzSYs2iLF1+37Az8ETFMJKgEt/dD6zL2rtU=;
	h=To:Subject:From:Date:From;
	b=Hrm9D88JUbVnd8m4khB29E55CR1q4OAlxjPklXRncYa58h2Ws2XPO7FlLF2lv/3IF
	 AkXZ5HiWfCJOel8T4gAQ2M8xYNBprURH7q8EMG0yD6FiXN19TdEiMYgT0fvmBQoQb4
	 A9wOqfwJE63sLiy7/Lfg0HRovRaXeIuiie6+L/LGN0VldeSHw5I+UCcCID8y4SG0bX
	 04wJ0W3mBNgQ4NQ+SKqI/3u2IB6gl+za15YHLoaOC5ERbGmQe41y9T1a+46jBEOOUl
	 92ziU1h+99sGOAkd4dXLISluZjGbptggM2964n9wBMrx0gBtQOtrykR8QJjCutDKal
	 +laiBd5SDaCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FF4C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 13:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054992867.25666.388817454061029293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f82dbb4d7e0699958b331074de36ddf9ed459de550e51e1c43aacbd780da5c8
Date: Fri, 28 Jul 2023 13:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690549928
