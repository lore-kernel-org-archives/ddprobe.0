Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FD81DDC1
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 23:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA354C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 23:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690845728;
	bh=3FTRd2qJ6Pmy+mRssQsz5JvpdXbUb4DZxow5/aRmQ80=;
	h=To:Subject:From:Date:From;
	b=s4fdEk8OOPnhg6yjLnyfs8tv0JwSNkSu2kTksr9vhDzt/e5tSAwOk3wRafalNl04C
	 ZRRX6Hm6Oj7NID0lj2/iAuTRYhaj1S1kz9A97mDGSVPc5LBxXtBsX4sT5PlgfovyJP
	 3SMl2N/bsHPiVF9OtTX8+CCrWhZhtP1NnX+Vv2oTMAhKqOsI/iKO0+Q2cBv8y/y1pM
	 7PN282bnsrHrJTrW7aoefyMHWXeuT4OmzlBChw0yh3BbR6x3NEInMXaIvAq7nNwr+m
	 0Vt1TMnWjOiYSBYYcq9shOFScxnHy1ZYm0YA8VA/HP578PcJa7HFnqy7b/w6a1cCe1
	 y4iK4bx0WypWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE5FC001E0
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 23:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169084572875.4370.8871979778598903663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e88973b5ac318f4b6791a6c7ddfb3548fd24a37f7a8efddfa662092eced5ed5
Date: Mon, 31 Jul 2023 23:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690845728
