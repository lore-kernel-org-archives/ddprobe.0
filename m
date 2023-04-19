Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EA3D2FA
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D396FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681941305;
	bh=SgtcRPww8gjOowim4wj+teBttincDf3Uvi/d1yI8QFs=;
	h=To:Subject:From:Date:From;
	b=sJUeROKMMXlRCjG3qklIdNxdu6yUQ2zh6bpD4tkYBP2VpYkKgcjILfaFEsB7NxiHS
	 VIt2Bywi/XBaeSwzmDSXLDT8/kef+dLIL4QjR7GGtyqUPlFl7nHYdfRdJV0b2niowf
	 qHo3b4fUOqVjPF28LYnvL8Zy5l5ajzIRs9oc8CJlDOGWHPtO755ueg1WwEzM+zGylP
	 rXYbnHPnIe3P5ZYaZN28BxsmI1M2QhoDJqm5Nu3wDoRkxB/d0wsPYrYq6IvUidehZc
	 OW7xC7YT2YfOkBxVrt0mfwlk6OfogiujabdFL/PBc4F/ehFPxUfrKFENJyshH5R+lZ
	 vYwbVkBHN+ZUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58FEC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168194130573.16979.17957624787106576823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d64bd3538a61dfb4a2d962894a9c60d9f57f4e0e65045ed52c4db6b920474dd
Date: Wed, 19 Apr 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681941305
