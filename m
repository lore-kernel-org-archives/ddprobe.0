Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AFC258F
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D7BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661503852;
	bh=PCPrKRkr7qifmrdv991b39undBeQ7/tEk3maJhoHKLw=;
	h=To:Subject:From:Date:From;
	b=Tl0ZjbM3wJbj3D9+Kt/8fqMIJbXEn9+1l+XRppbbWQrzCVMxnCQowyU5hBLi7q4re
	 xmpv3IHIgSA+7g49eMfuCUZEAdwLYqgVIl7OEds/RnPFFXRdvRLQTsckAm073vhmXv
	 I3KY4ayoj8Q/j82emDBaXH+R56oRgOPwXad9UmvzNKCUisOwLgp9/FsbMfUeRG/NyS
	 KyEgPGq7dC1qg25kaWC7mHhgukC8LEVoplAqTkh+0HLSA5py06dfIzrnF0RAZV4NJ/
	 CXAgLwkWVs7wQScvD2J1xHq7+s424nQLWFRdEHUEMAjcW+weUYdzbNCfYiEIS0j08/
	 osNj/+lxvAhpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582F7ECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150385235.3309.3164195183548735804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537b6352233f1550c7077fb1a64d3cd7f98b77796a862b21265546f2820d6458
Date: Fri, 26 Aug 2022 08:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661503852
