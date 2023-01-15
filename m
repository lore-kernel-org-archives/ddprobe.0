Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0257810E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9060AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673772687;
	bh=p+Qk3fg8NOQqnKzZlPpKcItGcDpWJkD2/GxpA9pmt/8=;
	h=To:Subject:From:Date:From;
	b=gPEFe4IkJw/ozCq4R8qEIylyVtQkjstnTF+P75juGjeZ7Oq4eV1UC9/nk1rh1u5/H
	 R+2NAe5S0szyvQL4nGPd/wYc6t+guWR+hS8GryRBeEtHcAWZBH31WouOsNUsINO8Bv
	 PolB1eVzIhaB3RiV/vUhWnrOo9b7DkOnS6hA6ToDP/F0L5/4FFGtznvuMghD9Cta7f
	 S2RWrVc5MtLp5x6/JmF7Aa4W/o4bulqMHzlXbvIcUUkcqSNp6dDNRG2Vplg9GySTZ+
	 niMFDjzzVKzRfvSFZIoeQZ3thfgHKTY/XTSVn1qC8S5h8RB3S/f4dG0DjelF8n6FlN
	 iFFn1c1J9ZIJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 747EEC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377268744.3745.8261994849231764893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01daf502e4039210342f1d38f94dcfdd3ba0d5c39140bfbca94e47c6ec39e20f
Date: Sun, 15 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673772687
