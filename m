Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F7D2568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F35CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665954053;
	bh=1MPZGtstj06d0hzYQdUWgQppQjtXwkMUOpXKgjY6GhQ=;
	h=To:Subject:From:Date:From;
	b=Z0YflxdQlFyTKMlCWI9R7CRfTnpjSxaJ/A8QAYjliQFkzG6hBlBvC+Y1Lrq8amuin
	 p1siM6KDhxHkiYPnofojMYh3ZHfdv54eHLqBKaR0aVqa2jfPHmxiw3jKjcl5h7mtY8
	 DBqdds/jNs2H8ZKT069MKhHGduu86XesCPDmpHE/bl/KPTqTzv5yJql3y8cA/V+5ZB
	 GfWdcd6eopzwo/rUYpEFsOa2RloDD5s3Kz+KdIEVXISNhXUaH9gPwLUdOPiRNtQYdK
	 VUKhKPJixCraKjEeinigHAVTcAS8Dpd3sVZR32G7kFQEK8/S8cCk3O7PU2tdgzVG8m
	 PkvZXuPthbovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E67C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595405334.17124.12814341979971928073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8991771c2c96740ec5d4a97af69a30149d5a2d67e01b23305c28b97f06b8878a
Date: Sun, 16 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665954053
