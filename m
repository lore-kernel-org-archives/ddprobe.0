Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2EBCA61
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 07:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6B7C433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 07:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696317968;
	bh=10ulUOU0VJCMrTy2nxh32rwOHtdUMH1kciDWL+XdXeU=;
	h=To:Subject:From:Date:From;
	b=JRwVYR3R23v+wF/qn4owBlpwbGvQTMx/I6aYCbbWxwT9d/O0oGmndEb1D9lSA5YQ1
	 pd1BUeR0h4Ayd7TGZCbGb8A/opoREi9TAuHYQWOxkAFlGNTYNfotHwG+vIy7DOsRHb
	 YylZmRIS786l1eJK9fPqquFBydynBLfdHHgA24Ar6nDT1FHnHn/U+sY2kR85j81Tgu
	 OhnnFWjS6YIECaWYHXjgAT+PrslMiy5Bnp3Tc3tQegljp486z646WAXSizFZH6MYm8
	 RujyevH9JUowxFw/OHN5aZMp/HiCUu+Kl+x1VvSTN8O9wogwJjM7M+7+rdmsaXJIUT
	 oGT/FzV5MLZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD3E75432
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 07:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169631796869.14568.1881292354462310728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04477bab423f16f775591cf15e9c1e53179b56e84ba6d20f75dc562d9811b6d1
Date: Tue, 03 Oct 2023 07:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696317968
