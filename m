Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BEB5CA9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770A3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670941287;
	bh=qESi/jDdYY7v3c3mT71jtFWYUQLt5M9VMkOwbPVcW2w=;
	h=To:Subject:From:Date:From;
	b=WK5hoY+eXxEwUwhCLHshvBKy2OgonEl4XEcHxUXMx+CMhLUC9u79uxnrWpXbchqpv
	 AE1cqX6qzSO6dClrbreuyZAKTn7dTd+yz00YAL+s8MnEgpBs/53xYRJk9LVh57yIrV
	 9ESJ7EesYpw3Gscb5TI9ohfmie+4CTrXowTsEpA3Y7y1o6MKIT679KnotNbrNHb57k
	 3P0t/gmnDrgvvDn8l5/qgYuqhMmtmtHJE5wY+oexYEBEgKSt2wn26MrLg5tRgzopqg
	 dmAZVVJk7Txlq76tu/L5gnL+6K+Pan68YuhEk/ho9BzMa0bHhOx63uollLqJZEyOWx
	 IC3OeEC67wrdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ECDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094128739.20343.15759168920634729400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde85ebb2e4da8d4370e31897118669a17a40a8233214d5511630c0f2b45cb4d
Date: Tue, 13 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670941287
