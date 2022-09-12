Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDED7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB00C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662966053;
	bh=4eU9bVtWf7MnQO/FIUzn1Ejt5cGxrA0PJ/zT+mGAMAw=;
	h=To:Subject:From:Date:From;
	b=eB7vdJOs1X1pn+8IeaYh3a8cfX3ri2KiNLQQVK9m+B61WPfcCmz5S5gc1Y6J2Xq4r
	 Y71itPqm0juRuaE4gX/iLmS/8rfeLk/6l60GAe074md4Kxnxb9sFCFNueLz/629AvM
	 yWo6J/alTHd7T2Mo89Y+HtBdF5E9qxTdk2Qn3Cvi55WZE/idqxijCCcQ/Gvo5o2Ufn
	 CVQ6rjSPEYiUvn242hxOOEHgJjyQL3dlGkT774hV9u2yR72ZgVLmaV3LETzjAKS7jq
	 9PBB8iW+Xi34fX7DcjlEztQigXYztd+miFICFWddebsUliL+KCAgIVQedzchgJb3nA
	 E0aBrcsf7o4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519F9ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296605332.27851.11471854142563421488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83f7da8919f524b6e9744ef2f2faebbca725949c564e318385105163899f5f6
Date: Mon, 12 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662966053
