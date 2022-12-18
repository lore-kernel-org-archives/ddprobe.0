Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29F2EA5
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84059C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671365487;
	bh=GS3W1RJe2J9hnoAinKFietFSaM1n8y/aOQbHuKlPOW8=;
	h=To:Subject:From:Date:From;
	b=fjI0CUUAlQqIEHot+ECW1133tAVMn+66oauKmEeP/yLOa0+PEqpk4d73zQ+SnNHRE
	 0uCuuV+nqj1Z2v/jJI+erii6nJBppDKHZxeQ4leFkRY2auLlVnt/PJWdxpfuUC+vpt
	 D6utWCpmie+/TpIPqTFTdRDajUBbnDUoh/3FFbI+sZHwI62Bx6+CeoV5DmUiJTWNjb
	 o/A1qMpOwZ+NUZnCUKNQXUA/BTRpepaoxT53nTghREMjKhizsf/+vEYJ7RItjbK73J
	 nyk7raPlGc0NUgYHGbRjTv6tDzpN5zDvFG5awo+QMAXprnjXEps60o0hXpZoZjRCQc
	 RMuTP+w3BNlUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E95C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136548742.24143.6033376407960154971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c59bfec1fd3c2e0ac9b4f4f6f74ef43a75d7239b9f1de9c30585f4e389cd9d
Date: Sun, 18 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671365487
