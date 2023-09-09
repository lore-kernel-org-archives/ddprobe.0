Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FB91851
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 18:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4186C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 18:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694283248;
	bh=B911POMhD8H5JPROtRcBa+TrXHee5jOqBKuGl9WrT4Y=;
	h=To:Subject:From:Date:From;
	b=G9rwAPdJ5p/xTPC1S6r4AdonyOVEcqO+m+ezr47TLpQQYTkGregk0wfcNO4I9FKYN
	 h2fchuGxqN49uhKovX8Y7xKl+rttJKBkItYmfLHyMMpx3wiLUixhU2QWgho45ct9yM
	 ZkLjvNduJG5Xij6vvthi+azs+mINMOIC4ZrxbD9MpaOld76HkHxpkigQKdO0iqRT/a
	 3Ns9W26Rhbsp5DH+TsOaowc6ATx1VKqbNdOXJxqCHKEi4ucFg6BZaC+GJQ69T2ANb2
	 /hlbTppM3BB6i4qbNRgqObPOvaXnzaXsxd4beyqJqYJaKSi5UYcB/GJqnw3VtgD/gp
	 8ofRBraZMvjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A44EE14AA
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 18:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169428324868.30202.6376167581944987482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec3dbcdd7cdf1c77f6f45f54c0356f65a969fab324176a425d37612788d8092
Date: Sat, 09 Sep 2023 18:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694283248
