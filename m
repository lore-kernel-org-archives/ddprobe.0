Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFC3EC14
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDF1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669062054;
	bh=TA691o5VxrUxyVmpg6I5xsps3ostPoYtV0h5mVoQ/cE=;
	h=To:Subject:From:Date:From;
	b=QcbTXizdInGiueiyBbXL/uF5+7zQ9V68MKB3K7Yz+wRS8GssqCpc7mqiau6QcE440
	 +DcRdYyST+K8YFBpG0p1NJn1/43LZdE3Ddf/UQdlTH6sswaPrtAsKlJ82m2lzithll
	 tplYif70FAcuwjWfDWgQn34mL0oMJUuIRJxDDw3hfZu160DkJ3O7ZtPWPBZ04jYyH8
	 d7Xv/danhchT/oJsfCpC1F28gJas5PDav1sPaFmkNgA4H6Q8RjL/vtwotvq9bes2fB
	 EChwU3RkjMiou9B/qn4ZO2BOJKxwgDo7Yx/G7CptPqd6SMyoAxf2RWF3BqTqXUPs1O
	 DAWngzRiZScnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542B3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906205433.28043.5380122292428632220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8a1c86196b9037b921d5b19da2d2bfed34945cf02a9fab578da16655bbe5f9
Date: Mon, 21 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669062054
