Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8C3A46
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE525C433A0
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680831485;
	bh=i0tphX9PdHW8mdlKi1fxewXckhRYjiw//V0E2SNLTMs=;
	h=To:Subject:From:Date:From;
	b=GobU/IbyUi5/7SN50RilbGMUH9JzRjORuSdVYWAbyitcfo7quKJGArYUFulJD3p5n
	 L7m3j4+UreIDUBkOxpn+nlZ4osS2vUija5AaC0bSGDk+o/Ji+0I7ysiP0m4zQyNzAj
	 MYoBIWIsOslGNuq395NopVHNpQi4oVSoXOPb+tLkuAHE3lVWCPFEHDMqflHBzIG2ms
	 bfCCfjMuIcGCVkEhqKFhkZVph1RLiJJRHsP3qqEWynDEaDZnGe8mWFoEpjIwXDNesy
	 JnYMQzkx2CXkLL59tTu2MWuWnGbOkcWbKlE6ueRo4jdbCyZ57saaqW6h26OIZ4Uks6
	 RNcmp9xPXCwiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9D2C761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083148577.9087.14500821832215320273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98f132d9d14236e381c4e1cfe36e5e88c5a96d225c34ad1b021f64a960f4089
Date: Fri, 07 Apr 2023 01:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680831485
