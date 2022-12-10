Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8ABD813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87639C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670690487;
	bh=8I0ovXUkVfxyjl/xFNPplvn91r0DlO2wjmcyUTIKlP4=;
	h=To:Subject:From:Date:From;
	b=Wi4T3gtAbgwe7zvJNHHYcFILz7ebvNEUIs93hogDWkhMghZM0PEzYoT/KdCzIh0nE
	 2L+n23cZKk8y2R5FLZphM+o7XCpyO/eG9k0iqs9fYZVG0OeCr3mptslc5rPmJo6VbG
	 bDCG69mJdD6sYt4IlNorofXb7MaL69VEb32MH3yZCdH38vE0fXo2BMR0k+HtQkwuXG
	 iewT7wBURBBArNT7o+41F6XKNNQ2Ll2aCS31H7i5XyPtTPtDz6vSUgHgjd+P/bIFc3
	 7Fn6OkXe5giCvFIJQ//KwyVLlenF/XU8IjACUgfMsRAG3SZkiRCgII1VBWKVG9FIdu
	 h/xKI9ILG4moA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690EFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069048740.1397.15775346447031459002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865c5c36fecadcb22406f45b9121f31011337209ca97bb759a7be9e7c320c85b
Date: Sat, 10 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670690487
