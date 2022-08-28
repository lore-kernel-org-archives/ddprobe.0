Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF60A28E7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB2EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661712052;
	bh=10/6XuIg4M1uniKmNUJiFaTSX3GySkjVKtHI1QIR3WY=;
	h=To:Subject:From:Date:From;
	b=Gxkh0JtLLCcxa/1W0+VvA7CpoxxEkDv8Dpp+We1jYFb8Z+meQv6L4+75Z48nppB5A
	 b8/8LTDszuVS6UmWzwQVqKrWpbCpr0xhfVthnK1yS01UB+GeRjsm26ggaOrKXRLA4C
	 +TJPXD/jaKyCerkFAyrwcFL9YRLOH1Qu9eQOAC2oSbA7ukjtnFDvDWbgtNwY5bMqLf
	 2dyCucWKvpWzXNAe+WiZIAAp4EeRM4+1l386lhNdqo+KVWydWkWkPV+E5rusHGFsZM
	 wV9s23jLapY4x8irLVmvl21/d/tseyt0jDnLtEhgw+lvIIVMJQ5kWIlx6oHHj8qwH0
	 CJcdgWcC3Y+kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FD3ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171205234.22132.9906235207328963198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03bc3844e6dd51a75a19971e196706c29bfa142afe69c7017992a3972a6d582
Date: Sun, 28 Aug 2022 18:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661712052
