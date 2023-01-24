Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478928BEC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA01EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674582185;
	bh=oXkgvjFaQ0eSOfktdgzjIEbV08itUsk//vHF5edMWAo=;
	h=To:Subject:From:Date:From;
	b=bvvoI43jUDVXFhwbnkalWwMJZNoqXjP8P0sTEPsHAcVQU8mEfq5nXCFwMl6GkSRyi
	 vEsmfpV41ohboXem9LO7kUkILbZLjSJB6tSPH4XnLUl86ZteYnkxgaDP6AOvLFB6Bj
	 gK1RAPkVXTCh2xi8DyemqcH1yMj9hJJZ69EtVQOIEjW3zWbeVOhBodQ1A0lPJUuJO0
	 zQIY+D890BKfEH2ReDcXaOm8WpwLMOuR4JWd3JezL3SMOBZH5SWr42VVG0gHZrKC2d
	 Cgb92htjRXkxCrwdArHbcqfl+uV36sZ/qO2Sb+0ZAVqZXST/q3GW/uRqknAOgxcdUv
	 cVLUWngcackkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BB2C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167458218580.4151.11213987162244052353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4bec628eec8e4b83db6a90f5fe38f238a5863debd148eee241f647034b5b5e
Date: Tue, 24 Jan 2023 17:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674582185
