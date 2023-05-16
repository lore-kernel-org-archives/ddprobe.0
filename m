Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1A21EA8F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 11:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26DF8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 11:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684237926;
	bh=WhmWniV6nm9u7qfjwI/ex4cF0ofKPQLqHlZ9hPwandU=;
	h=To:Subject:From:Date:From;
	b=YyudFoA87eoZPGvToNKz/H15zHP43fE9x44+UMZjS/aWnsqao+KxqXAucdXhB5DWj
	 v5nTVkETeimP0mkI1XPLY95H4AUOeQ8ByYTL/m1+nt8mYnaqoWstdzxFWG/45YzfUt
	 NFddBeMgIVnsvNbImnsiEDPxigTLHCUHyBF+dPmmVaqmsARtql9yrQo6dOy3YDsd2v
	 N2fxTfKdieBTSa6gAn4TGvVCjyB0vYQbfwgvjfNRZX4Ml9kdev7OX+f/zGcpeec0Q0
	 cbXLSIz2mhiBSAQ9BzteAz+t/gimTLw2lP4Qkg5dVzJXVx+CVimfT02EUUMSfi0SPn
	 v53dh7DiTymrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0892CC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 11:52:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168423792602.15054.9005176072522140571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a60b05e666432913b57ca07b3bd1f1b6fa4d8dd930f3eaddb7ef22ea8e52a0
Date: Tue, 16 May 2023 11:52:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684237926
