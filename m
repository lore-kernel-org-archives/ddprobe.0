Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D15362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 679BAC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666498253;
	bh=iKoPLD6yOg6PBfKxpllloBc2Z3m1x0kUsH2mkMqPuRY=;
	h=To:Subject:From:Date:From;
	b=gmfUmRu/OB3Yop4907RLHIelaFyPW/qeaMeMnngiKmwnvbnfVjd3JWb5t1Y1Ie0za
	 2Z2+MALg/9UvH94rfd7mdA7a695jXKhwdsmnSiatsNTMJwgsx9KBo9mJp/9nx53M+S
	 Hun1aTg2fd+OXF830G2EtNzqEHflKwRgsUacIAMR3tPYw3h1gYhwtZcm7aVnZDv9Iv
	 rJ6Vdj5BeDMCTkYNAppmv/BeesKBzQBvZyhXgiq1WbcTWVLZ94r1fPQGuxLM62dgeD
	 9dX7wZMrZ6YRlJC35IqowE/x/yHqq0hL7WLYlXz2AunjtIWCYmMVlQIhbhOddlzYO6
	 khiQO07R8A4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E729C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649825331.17589.5405477950980133536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0890456bd979b6cd7db52a9456e5c19c16c8b6f9af4f1764307359050872b1
Date: Sun, 23 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666498253
