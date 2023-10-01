Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62676390
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 16:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96B2C433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 16:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696179368;
	bh=95M+o+e7NzafdKZSEZIxd9jdrRZflb2k7Z61GLcv1aE=;
	h=To:Subject:From:Date:From;
	b=cR8u2UkQ7rvrtJCWDUmsiDtcjhKu8hRBsRakLxv6UslgPgEaoQSciEFr6X46o9ttm
	 jmOqVRIqPw6hSYTa19DDJ0LMw5EkH/+w+HM6Jp/s6Mc/zm7oxDI2d65OSx8+48ggnM
	 XLU8EINGledHdVmiZ2Jrqt76suLfOsEBQi/FebJPdETK26iqcq+iyIlwbXtPPthna2
	 yWAHfIq2X/g37VtwUYinu5xFsQl3eoUa7EIx9hJliDFYpvg9qGuxB8duXB4jzZ7HzJ
	 T6J27eESbAoIpozCPYCBsmEYRgGYAnkg3gC/vvueEegXjIxBrZ8uI1hw61t9DGVj+G
	 C7jXRqGGUxXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FE1E748F3
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 16:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169617936873.19674.16267132480396805348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c3c7f2d9fd5ebd73c157905c7cca85e8d775684dd8bdff001759cec10adbc7
Date: Sun, 01 Oct 2023 16:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696179368
