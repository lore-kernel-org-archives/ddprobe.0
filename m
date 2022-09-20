Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919B27C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0D0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663638053;
	bh=hs84CeLZI3mVDbiOgyaJ7efww/YqF6GN3mE89Bb2T94=;
	h=To:Subject:From:Date:From;
	b=rcj7uqJHj1B+sWcXrgTm3kho0qwI59IIKy2FeLbdrTW2921UnoNkxANEyjfa1RI/G
	 I74jYPp7PTqG7Y9txibiUGz2MNAKc3MG7u81eVPYUAudGFtZ1un3Ej5fB5/1ID5iVT
	 6czK67/4Mte1ooVPqGoDg9dIIzgqkvKe4rT+oYQ5UW+3BWjCpFrA/cCjDzrdv6sqS6
	 3eoFRHvzXJaU2+xzhAO1SpD9Gx6z7dlmYulJ7hxDmh77t6XX3NUcOLXRKgsNdPQzJL
	 Dw9gO4OAvv+g6JNyDBxwAZ04iGFIgtUo4tgOZ5Q5ochBhM41xLVs/CWcecEGadS9eA
	 bEO3/qGD5/cpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A56C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363805334.301.3162634949539576560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e1e275acba12cfb3ab62183f1a8cb74c0a5090c20b041317476d21072e3f7a
Date: Tue, 20 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663638053
