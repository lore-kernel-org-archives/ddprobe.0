Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA1A20E8
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DE0C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662547253;
	bh=SQz6BWbC/GRZvMMNdC7ldPjb5BUJ4gatG5c4EerCV1I=;
	h=To:Subject:From:Date:From;
	b=lHIfOiWRPH/mmlFvI0HuWjqZ01oWwodCET7/j27jUZ9oDjFy98qVfdSIX8AbUGhgr
	 YeZsaVGXDTDCZl6HYyefkRhP6pMQLJghAv/EgbS2hMB8bBaYqQ0xGpP+MV3qjWZ8P1
	 z4q2rg+X1B6JQiaTNwsK/f+3o52gzxe+chBmV7D77Rj+8/YhQgPUJAKYkZRzceQ/Un
	 ktdOE3OKtt7pKqGq37RY/NxTMTI3btlWgjieeJVY0l4LaD/znBdBooCu+F0SWhWPRd
	 g4AVcdKjrSp+o9cXNuPGw0pa0DDQ5tuIqhomBKeqbOjS3KiPJcImYRM145HeHncnm1
	 4bOC4PTmdKW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58402C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254725334.2953.14265407821730773764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba22a492afe8a62821f73206e1a1fb99b6c8e01fc36a59fc5225cdddb2f256e2
Date: Wed, 07 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662547253
