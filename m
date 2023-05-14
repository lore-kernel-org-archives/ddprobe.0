Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0BDED1
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 10:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1BF9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 10:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684058886;
	bh=vajTiqRtOHcyBt7ZRXuYoQ7YcM8OYnbuScnq+Vcaz00=;
	h=To:Subject:From:Date:From;
	b=PVZZftxHUkry1xi2uqUqJ8Ok7nnECNY9xgC53wN4AKu8lfZpf6Z+sYbmE2DC68sUO
	 VxMHf2FYN4Jrey+5tffcyx2eWjVucLbJJWeg8efoAJrWdfizhp7Xg+UPGb/gyjSn8J
	 aozMXEC74EQKFIlyivkKsp/1nNDgBgJ/m/mzSUnon7T7zMqPkWXeV9hEaRyMlKjRXT
	 0T829shjovsSGqImkZemh2YtnuXj9RPHtKuAJDBD62yDTEaz52+HtW5qOGmYyM5h6k
	 w3DuxPup054qA9MiQj5JFLO5DjStRotmJn90v39hSAvzXmoTGgW7vmO6GcwWYQh5LN
	 GppKdxKdX8+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE12EC77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 10:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168405888582.11051.8995697930518423434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb6c69089ec2cedc678de87f3ea491be1f76dcbbd0463b59acac5022160e96f
Date: Sun, 14 May 2023 10:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684058885
