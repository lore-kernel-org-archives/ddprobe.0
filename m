Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263471C04
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 05:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B34C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 05:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681882445;
	bh=iDWqxfzgQzshrbBw3mcMf7Jhmi464qpC/6x+RILMsWA=;
	h=To:Subject:From:Date:From;
	b=REuYFF59sBki6MAqD3JThcUH5yxeDvwZaQRreOSiG5LexclwEZDKzWVJ1ZPxgQf74
	 AgVGvGxBjP0SIIWn6oAovkDonsYl+ZBWXiwE3jhFdCHbc3jqCjvooajsRxxeqjvZTS
	 p47f5EeyLwz7a4j0PuiXhS7lQ2W0GEHS2UpBGScK0k5OWwx7L+eWiZai6r1cbZmjRx
	 Lb6MWkWFhrQCpDO8/ilZ8b70EC7nJDFkGT8oADoisf6wWeiwM92ur1Y2/s9K4+Nce9
	 TJtjy0mXUo4Q+B7JcQiup+8hFWUju8vG+3AVfssfquD6XpBkTsBrpLZ83DCZH01gws
	 6HOysqKdchPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA4AC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 05:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168188244572.3462.17534692598054682496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb08d585ecf60aa59143da72cf03502272c3eef3d59d6b09618a100ed7129245
Date: Wed, 19 Apr 2023 05:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681882445
