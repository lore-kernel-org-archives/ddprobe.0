Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8FD17CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9BFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665569453;
	bh=5nZE15EDnlsSPka0Q0wZHb0bhHTLI4mrxQJhHL915zA=;
	h=To:Subject:From:Date:From;
	b=UtEzx37MYpTRJnollkN4iTwMxHOdCQieTjZdGqZuq/cVkdu3VQ0iOr+uNp0fyZPtt
	 VZrKMF34Y0m6toWD3oIYxsi/fu0eBCPM/fxnHky9yTFw6hEXRqBfwlQqJ8hqDsoLpg
	 BsDyPAAS6g39j5XkwIiFVErlkmtcMLycUJFM+enP+llgsUCxtafwj8PEeobfu9rvTH
	 /lyzrJzPw/cLo9/YpIxeNtvlTuMJtjO+jyky3TewPvbdOLDRWdXMHC+jSXJwGfY8tq
	 HyJ+uL2hfG/UFfDPw+VG4iP8/0MRU4Xz8kJRdS2yxjnm5YLcWuy+fjsTJ8crohSMwY
	 U+Jd4jf2XB2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F335C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556945338.29804.1635619468679073177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1d6953bf43fa7b0819c4e7230406272a0fd4947dfa4e846265d8eff9d4d26b
Date: Wed, 12 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665569453
