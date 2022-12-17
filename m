Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1333A5D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F2AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671298887;
	bh=xWlQNNEXxlY6pWkawXb+ATSaG0fCaO7HTisZUB+63CU=;
	h=To:Subject:From:Date:From;
	b=kpwNga+UkqZotSfMZZkcMT+HzNlDfcdBDh9noQX/R7W1rpoHLOY81s4//bus5RAnD
	 nyVoEpHhSjlDR2e5o7ufDngE6FDiN93btX8jFb43MbtqlE78HscjxoQVVF40ZFRNix
	 xbWO7O7BYgxP4Z7Pp9ol6IozHCcu+0wGQVcEmMH9IQYGtHo5/1socLqbI+EfbVP7hp
	 8oa72i/l9RsQUepDjYpMRpmZDO4mc1hZjpZfSXgd/77Efb9gRjqR3shpKpgTjRlZbb
	 HlraKKz8G6UacdxpQ5cmxxjpLrPlUN/YTgtybIhqBMIZGfG7s2TB5/iV6BIPhZV4ul
	 Ih01S1ws+I21A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65493C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129888740.27524.2094719237749382134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624d7048ad17863c2967dfcf573f499fe32b67e4ad6853310fc6990abc24eaa0
Date: Sat, 17 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671298887
