Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF5815B6
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 06:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5556C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 06:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694931908;
	bh=G4QJ2MhZrfGEgBYe5TR4HZw7nFBnDCEEJWhjLtp6hRw=;
	h=To:Subject:From:Date:From;
	b=QZIcxe2k6b6x5N9S6NqPJZLOZy4/MHpmeVROCcojmqkjD8gWqIlSLqemwJJSw8BT3
	 lKhd9wu3hqJT99HfMdeXzDZB/0jmIAmdCYNUAuYwWx9yiXgNBZOlWaO/juO/uLg1+J
	 K/oh9OGKPjNwe6m77kibyTm2ISHtnFpK2HOB5yc5ltS8wP1zt2vpAgLA5L6D+8CCoB
	 +qzPHZ+BucDEbplhj5MbL3ql7yqP9J6DJTOPsiXBQHGs/hPJkEldA4qwp6t3TdKeKe
	 ZMyJKYsrKhYPz51rLWWu5Yaf3HgGdbVxAyYuXlAY+W5cch5dlE6Dt2wgQ5cuFh7+gO
	 ZBLVVZqTNSBZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF44CD37B3
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 06:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169493190866.27851.8580096848300474747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329c489366a253b6a2d436694cc13bd1bfabb310c07db4e8d4961be608cd1014
Date: Sun, 17 Sep 2023 06:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694931908
