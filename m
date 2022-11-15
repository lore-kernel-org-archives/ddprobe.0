Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89F8AD59
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE3AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668525054;
	bh=0yyXmnF5M+qn3TO7PKBQDXsVQnZJgXaPvOb2QVYF/MA=;
	h=To:Subject:From:Date:From;
	b=kvXLcrUsLlQ563YmZSQ8EMfSCJwjRcHgJoukMxtAPb+dBhzpbyJLOv7Sq5IM56yrG
	 k6v0WImso39GHbA8+SyvR1vHHeghUbjTu966vwU50KEo5mcpsx4wMcQvWEdUarDNxz
	 9m24Z0T3OD0kPS0SjIShHIPuXhLBYP/UWTIAygOsXDlU1/gk51xNAhWMzXfNr59aCk
	 /y3hTObBuvshO0+lsakFBGLbjNDqu9t7/dJzZBk3ZZviAFkJMlHi+6F2P4F0nb8Dk+
	 2XhFjyn8AK7wvpZWRqJ63gI3vzEfRFPXnnvzSiJmevcH7nDqS+iasXD9cnLivNw1q/
	 S0Ijq2++hkQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DE7C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852505434.16345.8996224453307343626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ecd0da8146aefbda6e21a54a634fbebbc64b5ec1c6616bb42de6b46e3b4a80
Date: Tue, 15 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668525054
