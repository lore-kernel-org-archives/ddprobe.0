Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60727361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED735C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686632166;
	bh=xs5j88fx/4kQ7F6RlXaXkPWsFX+dj99Spqts1ggjjuc=;
	h=To:Subject:From:Date:From;
	b=qYHN+44c/obqGXTi1W7k7nN5fht9i7wJ9Xf99NLQrpPl2G2VJ4iB/eC0NGELdBzjO
	 bg/JzesyX9nE9iAK4u1BCBbgcO/U84QXhILiqDn8MFnJ7zz0uAnjy046KJ2gfri62/
	 XzEyiSZ/kzaIG5QogHU7yq1Ex1LU+0cvwMh8JfmaRzsZNX3lvohyGo3Gz4dtnajWOb
	 3mLd3wiGnxGw5bGB9zIIZc9eAQcfPhI5m8LOAhfavXQ8YEcn29w/e3Lh5QoJkWFGvs
	 y1J+OWIDPCQpdRmQkTcXjS0EGwlPyFW8R/9BZcYYGYETNtHaM28/0tKo6U1CUyKkOi
	 bD3CKeZEUt3GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC16C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663216583.3779.9520352262262603673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcf0cda68f807ccc5c7a585e69db4ffe484a4caac66dc9635cfc48a3c8bc1d3
Date: Tue, 13 Jun 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686632165
