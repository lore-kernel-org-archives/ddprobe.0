Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5919472
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC68EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680306786;
	bh=oaVuM+PvMsjeW+HB8H11yOTwEJHSm6ut/B4fhEwGmUA=;
	h=To:Subject:From:Date:From;
	b=HquqvJSkx0IXiZmqKJA0tL+jLqHFgBp0EhQC0TQQ8QcR89lBRxaCuZgE/AxTfaK4g
	 3plzVuZir7DOI9QQ0OznKT7WHsXc0CveG5Zde3+ByLNpllm46ZpbJ5UncmswBdWoKa
	 MsCCQQ5C7P4kV/gho6K+NxDld746MzyD+jGKObEIZVbtvaxLsYYkiDOnj8GBvarp49
	 4aZKgk3/FQA/EhzKvvOzUU/5fUZlM9WT5dG44upNcGdECNwyZhmqvEF/eoTBcfyUbQ
	 HNAXLmQHSyOgLjRnfZ0KuRMIe1bkD0Jy+dKs5p7lZLH5IV9Y4tAztu8dQvBbWn6eRE
	 gEpa4B++NM1Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DFFC76196
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168030678578.22525.13500893585415502037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c968d1dc4535a62b876a7539baa145cfd8f85d9e02136b3af7324a6261ba6b
Date: Fri, 31 Mar 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680306785
