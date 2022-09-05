Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AA77E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6605CC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662384653;
	bh=U8SSKCv8cl04zw1SxhQHnP+eWAY5KHDgrRkLm8TtzKo=;
	h=To:Subject:From:Date:From;
	b=A9sZQzOujcBARNDfDltETAQkF+3LD1taYODbG7WdDC6kK0rJQ+RA74TvUstnEXN+g
	 zivfsmxIAXWECKy4hPVGssR4P/OOCByECF8/R4CrI6KVtLIuYaogi39p2CVjscpUF8
	 7WawzATh48fTcaFe7RM0LqLMKBkSe+J5a/c9z5Xpx6rXpM9BMZse2lvSg/fh43OWFv
	 +BW7deGm81uLqJOrYw7IXrlAI7YXE9ZssUvwts2s8GVLcyxdKyR3SxNwjWgqrOPgZq
	 4s0hYdZQjFkqSXpXpyH3hHvJZqi62gEXPifplgqRHUSVmUitEPtxc+kk8xFVlkAPZb
	 fVF3yOGvfm3aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE2CECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166238465331.27779.1832960009053668191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3421b6099081ecea1d852626e59e4ff54e7eb6efc4c7e7f227a6bb1383c6451b
Date: Mon, 05 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662384653
