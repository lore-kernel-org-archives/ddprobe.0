Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F73A2C9A
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 21:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B3FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 21:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692395648;
	bh=eE/3/nml/YkDM38HxWiLCN7xBz6uWex0NicsSzBWx8o=;
	h=To:Subject:From:Date:From;
	b=NWGukYZI97SSQsA8GdHNKc3QPt1+fKfeLJrQXz9JggzO8Qpa8VUmo3SUjjf5+t64y
	 iPXZvtN0pye0m4dvkp8vJ2fpD+pRGp5BPOy194lDytXBBYT2RNgCShx4upC/w5tWTS
	 0LwHfNF2rVUr5+iAxI4Umi7AsWLNlh6CPLz5yErdZCUJSHZWKs0PNY4EMCb/nrCmOf
	 /lzMG5zcOaEr1lu2OWdBTswlshfo3THP56Q0xyVBy4Atssoc/tVnLTbE024aAASEZR
	 bh2xLrXeMWhnUUljaWaUL/wY326odb72igsybfThB+xyLRI57RK+xCuUq+2A9ziELE
	 QkiKU9UMjkmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54ECEE499B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 21:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239564866.14002.7973766238062477188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b911796a4719bf0ced8413bd5da6ac47b69178d67633228ded2a19ee0cc143
Date: Fri, 18 Aug 2023 21:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692395648
