Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C08A1101
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 000CFC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680917466;
	bh=oJQfT8r6cec2yTaOZg05/4zsG9OTDmbwS9CAc5wFHDU=;
	h=To:Subject:From:Date:From;
	b=F7tOskjOb6cDSy22gUr3/638KyPz6LCWSHlYBhqQbLES3L/0NgfppPL4wzMQL4ri5
	 Ki3+tCX9bcR3UE3mdbZV3j9CyhZz+JM6SQ+5USPWg5kIw7k8XrOzmaWWkKBVfmKWpa
	 qYzqXqUaqktzRx++Lb3UxenNNwn6Cm00Ch9Gl7YhtMFS/TWYVVjMkG+YXQ0W2E5t7l
	 qChyeIGB5yBerG3mwHCP/J3boPc2JCCFxix6v8na/s0J3SPZx5PtNaSrAkGAGWZVU0
	 G9xoJ5FTwIXRO2p4JTXtm16XldmjuPcmsk/ucBVH+hWbWiY/93TdWe95GzfiRkqYJn
	 QsAaotNqmljWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8812C76196
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091746586.3187.13172010223568250305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8285ad038c6994a7a915793afe2102a063215c66b52fccf1ecc024b36eba7154
Date: Sat, 08 Apr 2023 01:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680917465
