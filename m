Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9AF192
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F63C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671769887;
	bh=B1j8Zt8v1Cyud1ZRmtjp7fY0brJKYYlauMWXsqAy5Xo=;
	h=To:Subject:From:Date:From;
	b=EU6hZiH5SWGy7ND8XQHwmcwCYAoH02pKzPUqArKHsdK55/wYWCBHVO1Ko1zbt13AO
	 mH10gvjaVTkJL73nN0NBITzEQWrrQU9TjsxrGIA/KMrPfR5c3wLDx18k4xuZViCIA6
	 TgD4NYD16qQNeZfWZNGJZLxts1tZBNbEleYDpFrd2PPKYY0ysh0R0KrZDHJDeBRFjH
	 7X6c9uhrl9S7Xkz3V+O3/bWKLzhd0iD4uQnF5Yu1mkgjVZT6QuUnB7sf8NVGrfzv71
	 IXLwUEyZClp1IOlPHf4OO718P5Ss9I5pnPmEvddkC4cZko+Dsl0PvsE0j+ioHCwac4
	 DL8zRVO+Izhrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6792EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176988739.6053.7096065313575503000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fe0a090cdc36527d8d6e8e039aa115917cdc5a495bcd55a4c419520badf9f9
Date: Fri, 23 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671769887
