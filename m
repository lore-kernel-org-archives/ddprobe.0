Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D7E17C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 03:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74FEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 03:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677210905;
	bh=cIXDuONdBPAin7GpG9ipd6GDHPyeO+IGBt/omJdiV+8=;
	h=To:Subject:From:Date:From;
	b=dGVFtPg/E/DxhvwhiY879NI6Sovw7Dzxins9x11hE4bdzmqhSRQb8u6ErkbOsx+NO
	 ax3vkJ/3yqXzrV1cuL3ayts0Dy4jVn+ZE7NBYhhRaqn8rgowIk/xT9bFGhU+EhQP/D
	 vCPJ7eSL5dlimcJ+qSJhLtSUTwsvQKtp3MwFi/JiMLA57wru/6D18/jyzScytRwIOS
	 nAir7Vmq2ibhKj+z9PKTr981t7t/2YHkxbUbTAm/cy1KT5BH1YDNp5gzFgaJo7yI5o
	 2DNeMkz+0agsQpwxWuluhdrsqOsFZ43ZQbS6FyydUUBfnAMxd493Ila5PkOaaI9/N4
	 xSY7oDLhfNqhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC422C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 03:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721090574.5960.11442832653373608938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f17a94d279ebd5999dfb3cfa8cdaeec17782e2fed0d0cd6bc43baa9768a693
Date: Fri, 24 Feb 2023 03:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677210905
