Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A663815B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65DFBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668617454;
	bh=89vO3XkzJWfEnMdAk0ZTW3nnVu6Y4WYljrB3HYLj7uI=;
	h=To:Subject:From:Date:From;
	b=KteBcg87FFhA/oy9We3rRzM9Ps3bPpLPSMyh6qhEOzulg1AJNbZiYf4wKEc4A7GYV
	 DjcM5TjIGWxZlk8o+5ZEXd1ybdKNa3/Yh7ao/wOg6pvaBt+J8lo0nHPSNiGVZyqWS6
	 0ojvXYCZx5eUYs3MUvTl1JlSxM5FJ7ZQJqCl5524jxu3PSg27PQFvtLyMSSx8wap/O
	 R5PtdKSPPs20sU6VBynjv7Ed7iZn6uLbnKveVybOQVackZzWXA8tTRkLNUURw3EG1/
	 /k/wHPe4ZgVXOrp7Ici6m/Rdk+aji5/S9E38K8mAFNqJuym4CRczmUKoYF/Itz5HJt
	 oabrwMmu/1EWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F58AC4321E
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861745431.4898.15554038311613729682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cd9219c08155d2789e96d1b74cb87de8339de29fb7bb3f26bcc3a512eb2280
Date: Wed, 16 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668617454
