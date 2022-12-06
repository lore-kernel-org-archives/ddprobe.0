Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D643817E3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857C6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670353254;
	bh=0B4FK/80UK4r0Huvg9bUhj3Sv6a3tuSJVNoCBIDT5Fk=;
	h=To:Subject:From:Date:From;
	b=fUpPVlGo/URhQ1Xg5NfIQl/ePwcsmbOJa0yYhUaLudBNwBTL8IWtbNdjJ3XCwlZrb
	 6bdBJBwyXg6FQYaHU9ihB83GVdoxbgDmk86spkDi6BiJlR5XSlCfBY4itSu55bNZeD
	 c6OE3UIjHRuhzRWYYzZIQ2ym2qKWC/UgSJjN0AJY1S7QHjjNc5rb95wQCC8m1p2YsY
	 j/2JAYs1W8ybhcw5YJ09iatkbNafMrEOiZ4FQn1ByXiWmk8ZviqH3wbmOCApuG1ilU
	 pOV/cDulchIKK2DZUyAaCVi55hCqh3h+5c/YdX/LuM77zB5u3gnrSbBYC33MyA/2UF
	 ALsCS6OFDJCig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6708DC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035325441.4740.18048900388979459629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259acf713f9ea547b13be5960907821c19547e1d6d9c5946208bdcb5f8119e6e
Date: Tue, 06 Dec 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670353254
