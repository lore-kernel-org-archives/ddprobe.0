Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5746836B
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 072F9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682224266;
	bh=1M+c9rGgOlBNmguVffKF9bGdmi2tvTo5LdLEPpA7cEc=;
	h=To:Subject:From:Date:From;
	b=pWa7Phpq4ZXComTtmVuBdbnakw1mDCKOH9Voi+rzOs2eZvGa+Obw8r9hjob8jRazL
	 LOXUtBDeHJO7Xqvf1z3bzej7l9lqRMArgQtmEju8wPsIuSkvoMCmKV6mj15+MflEO0
	 TtHVUZNOnYxx5vRcIdoY6zAwc0OvhXuJgXIjYlb4R4ePh55rn6lXcoMxZRH7wEY6xw
	 ESlq7r8pDbMhxkgTGCzHLNxLj4lAWFrWFvh0erJZKU+Oub/BWwHxodOaEKcjayoT5X
	 ZOclCkeTjmiGI46Q9dE9JwYk0k1pH8DCMXtuzSp4rLmN+xvqtmANyTG+UdepO9uSqb
	 +leDuIe/zgAvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCF44C77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168222426586.17903.4366323361649905830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bbbf1207cb15fbd3fb4a206bc93bf6225999781628d34abdc7f451f93913e1
Date: Sun, 23 Apr 2023 04:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682224265
