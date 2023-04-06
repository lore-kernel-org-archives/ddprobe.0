Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5726DA29
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0190BC4339B
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680758826;
	bh=lNs+TRiwzB5f2UJPJ6VTzl+M0zYjcp1HKHRfOebb/08=;
	h=To:Subject:From:Date:From;
	b=JdyG/TSR/7PewqdHIN54yxyqFRWSnjpfz/Gi4vHBai4sUwKzjSusF1jcC0OfBW4uu
	 vPxwExzi/Atzdl5FLGwy2mpcQLbVDn7uSv0xgDMBG6MVQzFVTw+bC7ZKG0RxYPsDw7
	 XDBYPbS/KqLJGr8sdWv2SmrE5wJg/lZAlwQg8bKGUYLRobqwKXFtrVcvpzPMjQA6LT
	 7Gs65+0cDPhA6aZoQ3yAtjGg7ZaadDAY1f1l27gnrGQXpDVLB1Q2OvchySgGEKF8Gl
	 b8xypmbSkKtjOvNyHYZ2sdpr4XAdyu57syHXjSh6aWQNEGPXh2u5yHSb9OQSwgzPnt
	 EWebw03bPmdmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08BEC7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 05:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168075882584.25168.12220879496318003585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2077dabaf27cdfb2b6f1a215e5e49476207e8dfa5977a4d10fc2e9611f79a0e
Date: Thu, 06 Apr 2023 05:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680758825
