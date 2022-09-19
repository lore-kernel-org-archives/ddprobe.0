Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67D8A2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BF6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663566653;
	bh=7ooniP+WiZFlBubm5PJzjbMEje0IhFdKqKAo4ZVUhtc=;
	h=To:Subject:From:Date:From;
	b=IO0LpsVqs1/pxzpHR+fWBMRrynRVainido3IofSZiHGT/zR/Buk+YTBLAd8/zzFHo
	 2uTKGKDj/ALrNhODRvTQfLNk0OYFql26cTbUFKm8dEOFxmFHKtDY5GRNHHvlTN0aMF
	 LWHdQi2l7rzyxaT8Tkcr2B7KGPBNDk7jfvI4rPfitHmg19Zey1TnhHLZhcZEK5SJxo
	 Z8smEDwtNP++tUOw8tStpPA9Qcy/L0f8QyRCKTlCUwe8WfT2vs5Jq2f7Fo6E2QVfSY
	 0pjUVB2z4EdHj5pSoYpJPlIZBV9BQ4k0eKw6qc8AbY+/pDq5zV//bW64vDyROeLT+w
	 IkmAiFuznJV9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5988FC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356665335.9057.12537079902709461245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28b03f0cce6fa9b0b572488cfbc895dad6cf38daa1fca03f2cb2798fda72730
Date: Mon, 19 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663566653
