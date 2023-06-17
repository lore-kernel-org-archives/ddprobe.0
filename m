Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5540D63A9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8816C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687025408;
	bh=gnegwcesBswejTVHPTbjs9lt24tnaWjR8oOgvS1jACA=;
	h=To:Subject:From:Date:From;
	b=fNNqBNE1v360ClahCI9z4L0Bh0ONa3N0G6IK9RvkjHEbsSRJqszW9ctHLreuKDEJC
	 2yuy/zU+uDFblnuNWVj+sXDHd5hSYFm/B38oeywxySh0vDbIpd5JYldfOXEwkn5nk4
	 j31AfWQEcp90E4xOMkqk6aw0waHNt4y+hWCjnvbSQVKphtkIqd6/sqNCiZKr2BvuY3
	 PaQz1DZTFfznCsxBIlHuYKeFyzFoJaNih5IcDsXKdrdxe4i1IjdQlEbMZEl+xqNFIx
	 DbGAw/mQrwyRHgoQvqeeUq/WXWgyxIgwvV8eCohZbA1IF4VJxksWjoRtazUFOHwgcg
	 odXDqVvsrcoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92FEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702540868.6827.3023334242080559447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fb7e48db0dc50b1dae56fe1eebfd425da2f2f23fdaad636742185fbe53b202
Date: Sat, 17 Jun 2023 18:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687025408
