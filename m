Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C086A7475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A3FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670886087;
	bh=3P7GtU1vZvqI4FJOvy1e9N33Fu+Fp+h1lAyLofORXrM=;
	h=To:Subject:From:Date:From;
	b=jGXJgVV5HMb4q8UP0UndR4IGO9i1DdtvWVXvjocYfvB0e9fJvCvnXYNKLAVpcq5jG
	 3W9dwJz0A9wQRpdxwx49oW6qv0/ytMVu8QhZpsn8WnNZnRKk27SmNGTkD8v8qPfrqo
	 0jFDnXMy8FIlRf3dfmDJL+R44gaeOWafO2kzGT/h5BG7SQlOl8LN42YReZC0ih+JWW
	 O4sjyhTiTgn0xPnfJ4CVp4M/7LbdDSWWe5KXhyEiAoORMFzawO1s01Y3o7Z/slpiys
	 bNIIWl4E8TbdCigmkScma6A+fj7w44mZkk6rs2VmQrYxk2VuKxFbwsn8Nub1+ctRlt
	 KSfRF0XCmsxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7BDC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088608737.12222.14474015384073559818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb71efa81832133099a81f77694dc08aa2f2b661024048012abdb4ecca54f89
Date: Mon, 12 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670886087
