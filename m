Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5848B211C
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12A3BC4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675772286;
	bh=S2xMTgIgFmOFB7Q7vV/1lztBh3hmvl8fu+OQlhoavOA=;
	h=To:Subject:From:Date:From;
	b=ErsbwptebO7rF/S5djd/yKQ55CNIywJnCMT8f/BivmVSD/Kp5qI7BKK99WT814gvp
	 QWFtl3kE+IfOviMpu5qheVjtdMPxNvfr8xp/lCJkOPpYzT5WlLaunFq8jpijr+9AYD
	 e9Ac+8XEmavQiIkYoHuIV6MQh8V0dXH23L3F/j1j9G+cO90JbQltzx++/TYQpg9blN
	 mn14ZhvzGPi46uXfEW298Z4RnpjPdfCxUr7eBIqqm1VvXafQLHq0b6zq30gEIKfM+r
	 2BQLDxUo29l731Te3SN3JmAD1r6lEOq4ex+W4YncPavYkkTeMCHEYeGr3q0LqaVXWW
	 sLMYOYbaOVeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E23C0C636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577228591.27914.7914826046846009049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b49f78736ab0f41ace175000e9b2a45f50fb3bf47757b77ffbca53b1fca9de
Date: Tue, 07 Feb 2023 12:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675772285
