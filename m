Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF96E6FAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B30C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670614887;
	bh=2lrCFtJmkovHm1H8xzU3SLeZWnfr4E6amLd8HbLC5Mk=;
	h=To:Subject:From:Date:From;
	b=dEzkKcMZ6eSrgv4JT9xtR7xX8ETMHwxwrDkM4EnDvijynekd4JILiDxNNh+HKw0YK
	 qNNgilTRiekS7CiHNcfaK4Nhwra5VZT6N8a7+OFnTbGjLlW2cyTasAzXqqbw1VOPzq
	 YddkkQgucQTmMyLPbQaX3fdz5Ln4+9IWPDc44KPbPOeAYQ0m7P467LxwTBhNmeJUvc
	 st5uiYadqE7wq5r5KQKV3YbHkDTW+CGnyu63Y8RzKs6vKDE+2JStftqvDNGt0Ouao0
	 whrqU9vnkg9vCgMHP8lrYAiPP+3JqbAgLEnTJI7Fv8YJoX3BQ5O8ewIwULKmrdkj8H
	 x+/zNMxeOEBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9CDC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061488738.8647.16733001774716954552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1c65135a7e7628770f5e869b22dbb09661130e9b1af10258d2685ed63b9079
Date: Fri, 09 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670614887
