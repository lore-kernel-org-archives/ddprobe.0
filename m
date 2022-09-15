Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B00274C91
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC09C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663276853;
	bh=e0etey4ZHA7mLMJFy4Po9KEsvUB1rOBbeMPgPU6Li8A=;
	h=To:Subject:From:Date:From;
	b=s5jAjslGD8ApymBfWkB4i3jdQlrCEW/NG0EZBqHbzW8jSjZ2d4RzYCKKAYP09snhO
	 87o8EY0ELkvAA5WpxuSfJb63t7uDDgtGdt3DR/pK4Alw6UH8IdB5w1cgpQef/9ivio
	 llDcxGX40EFQKP4BruapRIHgYunZAkLX0Mbys4ivLz6TT96oQr6nTBGlVFBRDOexfK
	 D2fe5Gz6BvycDcGnOKBA3uX/oBhIxCNCP+Id918eEJAdwnOfFGnb+huJu3I6me8aLe
	 STM8Kz3AZr8ilWBTbIMWnKRGyOBFadazS+CHAufMN9+KL5LSjziPXYhQLPqmoDgbT5
	 XXUXF86I60mXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5434CC32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327685333.1208.8246925950731045031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8df46009a38770954592ceab9d2755babed10ba625e34755ab33ae0e8d02237
Date: Thu, 15 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663276853
