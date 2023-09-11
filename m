Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47828154AE
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 17:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7069C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 17:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694453648;
	bh=G/vUJub7DSdlpthCAY49FnpCLCFpcyvZU8Ky9CYCRuQ=;
	h=To:Subject:From:Date:From;
	b=d6flAtNZG7dw2wFVa4OOsgdcKMt1t5MNuQecjph4dNpEkTQDZfA38RSP7bWjV2erI
	 9jH+NLHSunIFhZt6tpoe43hiI4RVml5Dtwl1G0R7xBEiYFDSdjJBFTTUYC65yWzYV8
	 iT6kbdWzqQ52we3lxQG3uVGsnLfQuiQnHVk9RpSbyqXdvradlch8tqwDBqwOVfIdET
	 xnhpYkhs7gPjU6xcCBpwzjx/l34XH/KEm4+rOQAcUvWVguPLdA75p+RlEWD9MY10kM
	 Qbs0w7PU4lHfv8m+YuJP3p8VnZqkB3txsVNtTB/Wu2UgKcuj4WAqtovBqovYovpwRD
	 9z15Kxx/QdCyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCB5EE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 17:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169445364869.3951.984145345977328226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9472132e289d6b715b2e122bf0337c9a119ada86e5e4f559f4d74d708c557c
Date: Mon, 11 Sep 2023 17:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694453648
