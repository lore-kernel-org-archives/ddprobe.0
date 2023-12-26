Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194DD1E487
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImuxQLdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 930F2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703602096;
	bh=25GfcDVa/NztfdCJmInKO7wMGgIw89yGJY04n0KdSLE=;
	h=To:Subject:From:Date:From;
	b=ImuxQLdrPOqzNSE+bJA3WAjhz3OPDOV3MFdcqeTUif0WukAJ/GOGgdaEDuPbLQxM9
	 kCS1BuZYGRgv1Yp6rEdO6s6Pq7kWDt/lS55mZ+PxXGIu4crDm1pKS3HA0WLpbo9YGz
	 bEb6ZyaCs7MA6Y8yfe8AjS7iD/0iJqvQtJEf2qkjyc60QLT0VbbkULFigooUGOrJeZ
	 wbYlqt2XX20XfssRgrcpbc0j0qNp7eRJoekUxyKK4MQGYO5wfMot2sFVTC9JZHxPf/
	 8r9BMr+i9dHK118mwc3bI+jaFN2yRa76cw4LfUX6RyCD+zPSNm9o81HH6vZa35a+n3
	 uBsLUfujeVklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E42DC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170360209642.4061.2905907557651533754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ed5b26c86e6bf7c0903f90cfa119af15e6733fcf0df1d5fb5726e308f2a8f2
Date: Tue, 26 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703602096
