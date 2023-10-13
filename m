Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFBC15EA4
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpmXOfHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CD1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697222828;
	bh=Y5CnaHbg4TwBjhvsE9Lw5jA5akfLpqcefRwL3I7pY9Q=;
	h=To:Subject:From:Date:From;
	b=QpmXOfHwDviJiLbqmcD0vcc3cTjSxbHzhVuw6/kKJiVkO1NV5Bn9F89eE6y3CjfSN
	 KVN+tJmHOzZIyG6gWnQlEBNTZcwtTa6Iof555aTZ2lVEYINT8csHVzYaZB2MzKMppR
	 sRCES7pz7uXb9FhO/xWY68xERKighpit8VdKhqUfN7A6cP7C0ZCsfW70XZHY5rxzoV
	 RSLoKthRfi8GxNpT2HrVyuphwswkMowN4Z+C80fHFZHV0yRmdO7qmhei10dfTzfxlp
	 i9JqLhOtzeJUC3bimq0ljRtTGf6Oea3d4ZLvdRAZRStzQlVcmtltPg4taAYaZjudEu
	 9tMyo13E7pN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC571CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722282869.24894.14693057131347061452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd1508c32ba4710f5cfb8ca96516ba66959b0e27d2da1cf4f4a9c43650db834
Date: Fri, 13 Oct 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697222828
