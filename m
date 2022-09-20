Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C438D1C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B65C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663672853;
	bh=TDjCQn3thqrdPub1mcFlk3UZD3E7GMw8roUSi+kmq5o=;
	h=To:Subject:From:Date:From;
	b=kmyPyAoz02NbrxtyHnC4qStvy5/sUe+W5I71xERS5qbcGdvxrpDTJv5F2fNm3g1hX
	 E2mPBzvjKRZ8KLbrKCI7vwYUZZ9OuijnmFLC5ytauxmJjhRq0KK5tQU8un6EdJCtGd
	 vQl3Wb4BPqEkgvxIWGOttHzUpGIWi4zF8NILeQM34mnXstFumY9trtrZjlO08Gk77s
	 53Q88/6+gVM2XFse0ZWx0S6y+36Oqn8rymqYWmLxMArtwYBSOqFiadfKpEWLqz0KLU
	 tq/MGAvSHx2bcFmyY6OyncNqQHNJTnZ9DJfi0V8dVpmOHAxb80X9h2Me41lq9uhbMX
	 78LCHg8Vr+qnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5719BECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367285334.4282.12390233763533006686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9beccff73adfd5a55b37ba92ffd721072edf0aa963551365f52a367889b221b
Date: Tue, 20 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663672853
