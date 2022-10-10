Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB68A2903
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE05C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665409253;
	bh=VDYvkswDCqLUoxziGkjieVwA/UMTNnAAbdayQHugj58=;
	h=To:Subject:From:Date:From;
	b=j+VwTezTRPbswN8GpwTia8S5SOPz9rD+TmwRTBmNuhd+xrQOdTtMTSWPzu1MoMOuX
	 61uTfC/XNtKWJ90tjpdmo5pCMJA1l4uea1LI0GFWkdNHcIMaSo4yVCW/WCIEvK03Pe
	 Cu+XnwrVlN3pOyzthh3+DFfjBqqHaqNmO6ododQ6kZs8seSLM6xjJbCFIpOgJu006h
	 0DXKtW7wtlUGyKDey6nMBPk8Nf4ADz7KwyRQAcmLKgMUAlq40g0VbBkD2iKQIYjhvO
	 LZ9VLt7wkT+Rzfi/84rOe7werUQV1aA7RAh0c0Q9ATs/eXxNjnaqpFg86qgvT8SGlR
	 6j77pHb37EjyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51564C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540925332.9608.4458629698534860006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5895efe605d00fb69830bcef187a16f23716851631b09d7c3333ae3c808f4bf
Date: Mon, 10 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665409253
