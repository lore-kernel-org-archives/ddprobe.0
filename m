Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE3218C31
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BDCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686571385;
	bh=ZJP+tDWn97uMafHTL+3i7eP3wUOO7slmG3kGgmPUrAQ=;
	h=To:Subject:From:Date:From;
	b=VJrRQh4HA+b2AfQv+tNjDiXb/szT5sUuvRUnuV2l6+nyBTUh4te/2ZFAp+ZBUr1FW
	 CelxjJOZCGAE38xnSeThkUR2BdVRIEjYizMlDtoRT1EdLS3xLdaHiNdhBEE4ynJFW1
	 uR0EN8pql1YWCsWnLJg9JrYLIl5LT47xvaH2Jzje2FtBU7VbkbQQcS1E7u+fNjZKuT
	 MC6fZX9fnb1fQYCkuuticNQVgv00q04MbwwAVIKxLMJSsOYxJpepazNs48Rea+UIOu
	 /QLWZ3HSan/nPJyqNfBdsV5wDgOI3q3Eve9DJLIZqDW3K7N+2aWKBd5xkaMQYMsFzX
	 I3T5n8+rKAgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9378C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657138574.27485.6794298356920250522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ba35daea2fe38cbffc1586b68b24951447d4c5461b6884c7ceb9b4b14de996
Date: Mon, 12 Jun 2023 12:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686571385
