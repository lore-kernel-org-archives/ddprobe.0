Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D987B
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 16:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 16:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675701965;
	bh=IUxoByWKmUPcHhNS/MjpyQ9wzeQ5e+CPi80KG1ai8c0=;
	h=To:Subject:From:Date:From;
	b=r0qNEFNCcjjXTOkmZz+IDqgJqWe1e24SDbVNc6Xn9UxmJDS0yeGbTRLhDBOULGDZ5
	 HZ/qLtFL3gNqGf9LyAIcqyBCN3bIiRA15+5IC+DESmteBwiLIERcO4fB1qtiNdF43w
	 66+YOG/eLZODqhxR6wciQCr7Y3GW4OF9w2Pq7zxIgoliMjk4W3CchH3ikJvPAA9lQI
	 lQVmlOGdD3d7XqNhrX1///aajGNLR+DQlxsdyrybj2Eeyg7K456NVjO03VUY238y0B
	 IsxcyaQwAhmpBh7qcVlbum8NTl1eAUm9FfWLKdA6rXBQ5SFt7/vW5LCZsT9nBjsah0
	 7T5V1s9VaIfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7B3C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 16:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167570196577.31304.16933999916934470877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2dd8ddd0242bab40d910dc394fd11058d5ee122f0c8e270270b9f68fabbf5d
Date: Mon, 06 Feb 2023 16:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675701965
