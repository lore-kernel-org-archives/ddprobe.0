Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606831EA78
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 20:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3794C433C9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 20:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695156308;
	bh=+RSSx/XAQLeTQU0+tAVB8/XYoA8itdGosSVy0cTcJRw=;
	h=To:Subject:From:Date:From;
	b=BVPvWjlLYZaBEhkCtZEi9+pBTV1ILeYNn1WqQ1uQmjbFPnAkA0bA4d+6AHATbkl17
	 R7QzsL14OUVVIv+sr99dFCgY2WOF+blDJ4pDXoD3rWY8bPh1lMimRLOmbIpqeT/Q3u
	 ODYkImTeQ6jwgsB1BBwIPrjEwwcIwGf3xAA4oofbdK+hchR4XyHpNZUIdJC1DE75ww
	 jXx8eZfDBAh8gKJnJQIqRhKMUf4jq9DmuB8qtOuL/4GMBAqrWw5btRFx3NiWf00b2t
	 mNCoYipxMkf/Oql3Bf50SF5fDdR7WrXkbTq1SsT+0Siko8NyI2saexiO7pXKlbHGBF
	 DaWmtCkPzkz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B3FCE79A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 20:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169515630872.5501.16064983310215201425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a87e8ded974f257d2799b0765994a30055d249dc014c6c6e121765654cfab97
Date: Tue, 19 Sep 2023 20:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695156308
