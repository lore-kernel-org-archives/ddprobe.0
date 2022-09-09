Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E067E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67369C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662715853;
	bh=6SLuO0LD2bFNXbU8Zx+POI/kXCEmyqQnoM+eEwkavuE=;
	h=To:Subject:From:Date:From;
	b=qgvICfEQq55AHyyaUmMWCvLW3rvdrPmF4f9X7SKvp5IgGWO/B5WW+xmUBHTnaBc4i
	 DKAkzTOLGlk+/EJhzIms92dcxJ/C+VUHMNuQQg7GYPlvpWY91q5VDtcj328kCTFoiJ
	 Uwh9mOPhKUW2Ce8jgcP1+2bA9IpJdxflnFsDZiNrpjhuWw59mfd5VBjQ9zt8ZfV3Ay
	 Q6xlX/UoNgTGw9JjYJmISjsE0jdNhNQjloOxHSDqaYYyuaaG4kKVs23lwCeeAqHzrX
	 fiPs5rzIqVRneQ9S2ll/0A3QcjGHlmSCU0vMDEYmnPnyhyCo8uTrTTSi9JgLWG79wX
	 K60E41FaX2CFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDABECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271585331.27196.8522983131953995620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2a306b03e7aaa41db55906ec02647cf259e5fc3e20ee56e326f3aad441a7e6
Date: Fri, 09 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662715853
