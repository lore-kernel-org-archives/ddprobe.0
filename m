Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3BB18F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 696CDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668804054;
	bh=0puWL7TwDWeO/jr87YgyUch7IJymRb9jg7HC09BuJQw=;
	h=To:Subject:From:Date:From;
	b=K+dN8ajWRmRS/vU5XegA93U6u6QKOv4cMglbvUpPHwlg+g9TafZA7lgyjNG2CVNzF
	 S/lSIy9ziXkQuHvnXcs95hmhmGakiVrYhT0oqzRIMNoV1LK8+l/5hdANRuOd2Y76mD
	 DVYx+YZiBoEyKQjEKYNgOz15v4mYo70BKHalZGHXI0NWHYjLVZgo/s9q9aj6kZi/hd
	 Qtunda+FD/w1plevMtJvFHvkOjOblJuOtrO2TjAF5hN/V+USmFMhK+qax+6O8M6Dl9
	 jN8fngq+ImyUx1qRm2Cmdx4W9KocaSrgr8U2blE3df9EgNOFmd58TDoBSjMnBbnmV/
	 Zy6Xdc/9YkkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B35C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880405434.10062.12558646667498391722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9d3330f526525fb3873fbb2a828830ae914f33b7ad7867f8f5c5e7af002077
Date: Fri, 18 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668804054
