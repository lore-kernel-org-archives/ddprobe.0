Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2EDE4A03
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690EAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664547653;
	bh=/GoUK0K6RWeVelT4qJ6FtcakcPEk440BG63mMtdLWdE=;
	h=To:Subject:From:Date:From;
	b=kI6YsW6NF8DTZvOZ1jlHte2FK0bhirtZM6U3c66U8ZMDeRfGUGNNMDq2QZnsGBPQU
	 XYovg/x1C/5MSCiGQcz9bN+zFaQpU4MYGDkSTiRi6Z3OajhCxKvMB+FZ0dRnFrpAWf
	 i4kZZehaGkzB+QJAk2VZpuZZkJio6nLpHt1lyfTb9CjOmMV9HqQUZUXLqVrGNq5FHx
	 VN8Wyd+sM+RjHzegdgsuvb08E0jiYMIedU0eMsvrXoxxUhfiT75D8ZhVZI5EkyBMIq
	 gLPUNL8OYyKNrhZx25gAvES/p/w9t9WjlQO4bOD7vGTjqZmcjH6YeqTyjL+l9Qu1u/
	 gbIstTgUG2nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5243AC43217
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454765332.11418.9523888559827360287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aebd412ceb57bf2475b7d2a649b6a78ef6ca56ff374da8ce1942fb5d8f5b803
Date: Fri, 30 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664547653
