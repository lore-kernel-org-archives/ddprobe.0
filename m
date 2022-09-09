Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DEC7F8
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731A4C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662741053;
	bh=W7ac1xtRNN+Qhbx7RPeHsITybB6c3i71Rq/ciI4JA+w=;
	h=To:Subject:From:Date:From;
	b=W3+u5tT5kN5jb12zqfV3YH+a04f6Gt4akNVZiTFRHY0m9ulaX0fOOFYYII+wbwulS
	 VjaG4uJjol+Ms1U0uCuj2H/AeqyKd2+AlesHKvOY4+u5t4hHnzyUMqHJo/z8FmrFBN
	 gFrjg90D9F3zvoQiVBonwPx2kWfvfmW+KUKCwI4P8edlEp/g0xMYis5EMF3vW71zxe
	 WVGKZEpzysiojJrdbefqqbjnWq1UeJbJK/KNhSreXgTsblkOHdhPCC+U3TI+Nts/+x
	 5P0YN69gOlrScdEOwVGH7gqwpRwYfwkCaoFLEdkXc37OJJ0Ao20qIyGyj8atgNqrx4
	 L/+SvGEccvGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56430ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274105334.24775.2218790865722981680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f798e365535f60c526c4c5ba742526f786390e9b4de1bfedf75a389e0ff57f
Date: Fri, 09 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662741053
