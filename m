Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAFB7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95E4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678551905;
	bh=MFcV0C2/HPrVOkwkQcQ97+AMJpBiYvdOG/3UgvQK8vk=;
	h=To:Subject:From:Date:From;
	b=iYzbCu6mcB0YakQeLpgm0LLFxxdLxJG3yl79lzuOdPOZPKNXXBQnKg7eVilX9gV/H
	 ptyiF9tCt+RgwXvOMNkBVXI7qEXSNvItBbjGYlUcgs2nbtStMGkZhwOVlfxC/1H352
	 CSIJMdLtEQeQi4bdLvBFYVOVrX3eYR5xaUv7S2gljgNrBNpM5oYc/HnYo0Mfs/080L
	 lXi0m9fcQY1/Hkq2URzZjyMb9a9CVWaGgZAbcApLl14jT1epnOoJnt22xd94Yo11xj
	 8XV91BZ+bt3paRxU3mX/HPHx/X8BqmWK33EyxCw0cXD89zTPiEyVJFwP3q96YHl3Rc
	 CUV2MqfM/GFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9A5C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 16:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167855190575.25014.1128366761523188057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79cec5a3354fe3e2a763d1580b7c1575f85b79d29d1abe750e0918ba14d1d7de
Date: Sat, 11 Mar 2023 16:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678551905
