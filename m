Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C24A40
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05525C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685507646;
	bh=41kOhy9LiRoBL2Gev7NpFOUHKZQrdXHkVoJN+q0cAzU=;
	h=To:Subject:From:Date:From;
	b=jq1k4/rHqUG5DIShOfx+YGa6GDwJ9x76f24L6zNPp4Ld85wXF8L67d4RupsKIiQWt
	 8ipn1+Lt8FlkABsgVe2F6WQ9ma0lM1dRJLbvXpaJQ/p/mCOfTks1/mpvgmQPGgxMHk
	 L1bHcblVtTUYeCsLRgJJdTrCYiPQFuB8U7Fdu6iF5ezuguqDr2aneQXPXSFmm4tblC
	 0xvNCpqAUQukkV90Vphl7A9rQLR0tjVFXbW24UIA47M8bKx2qS2KRuHfQg/s3aAofU
	 CJzKuEdPIR+uYASoWb6uwlVhQPVgGD5irO8O5RbkULnDZFZ6cPH6B7nd/5EPya/he6
	 rl8sfsZIgvE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB969C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550764587.1971.1076779322552334254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc6ebf2cf03ef44087a181be8090b5ac6a95732a8530e33be97536c740b842b
Date: Wed, 31 May 2023 04:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685507645
