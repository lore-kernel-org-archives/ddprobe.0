Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A661841
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1D0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683245106;
	bh=pmQXYR4avG2lf5ZBAvPvU/pJAFO13NNmoTIl98CBY3I=;
	h=To:Subject:From:Date:From;
	b=srliCcJnMu9GeJ8UzlseGzQ+zuseO+7W8VcKH1WLu6TnbiY1LeXVNA6kTjWj5HJha
	 tD5g+NNhf4mgRc6zjJrRBYWgHTp/bQqNKuuCW+kbkGP39sotrbGFpKDWmBM4JeDZUR
	 T5Zy8ckItHU1h/fVP9NW1wZfL88+9j7tGPzfufJvzBzm8KaKQw3+URkKWXO/65O2mO
	 O2mN9tq277LxMnqucAQ9/JveMJWCnR7Vw5pdG6tTiHFKXdPTfCmTaPLTSwja2XJ3nH
	 meQbqTljKPYnuW0YDBUD/i+11y/PG/+u7xkMKomQmkOXi1+2BjToK+DtBhlU83udxc
	 cVMTZ5WH3yo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D76C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168324510578.16430.12374258812685707983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be08d1096dc2d18d9d5d771afd125d4c54be4da9a6e41a1baf0d8a62ac836edc
Date: Fri, 05 May 2023 00:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683245105
