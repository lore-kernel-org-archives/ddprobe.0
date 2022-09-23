Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07894409
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DB7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663954853;
	bh=o0LnHvQ3wpA0AJLAztRGH8qaBvOxrEmhAUIH3dQ6Tw4=;
	h=To:Subject:From:Date:From;
	b=giHwM7UeitjHfmQG1ADTMC8gDLUPkgbGBoHQ6U3NWwBWgZhRwnv2yZnNBuvM4v/Z4
	 ilmb4up1nf14mMPc0L9F0Ax7tSG/sWdDvdvqLU3SQl2CIoh6kDCHBLv2RZqzKlafQ2
	 YCdiAB3GLl8da2oMnVYhnzTgMPnBoBPZkXoSxARxzf+O2FBwWlhoQF7R6Zv/69JHJP
	 7jgeQ91EUXOugculpoF5ea1NdNVA0hjfakTT2c87uWvTvPkfgnBGr2nj2CyT1eXYSr
	 gQ9z9mmyfc20zLEr5H4X4DJ8OSkY3ypuvaHOxq/RAsql9oC7nS0CQh7HqvDAWgkAnY
	 EBqLhpmTUPxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1D6C04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395485331.24926.563821821774528743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27719d2d21fbed546c627f0aea622d24ac8768efa2e0ec0c35de36afd3b5a244
Date: Fri, 23 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663954853
