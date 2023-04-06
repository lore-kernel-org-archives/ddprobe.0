Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467BF6FD0
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8C1C433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680788885;
	bh=rZnm98bAMKmfRHOFVBmlfJoYExgzWaNIbuPLA1uI0I4=;
	h=To:Subject:From:Date:From;
	b=T7wsrAvM7xtREgVb+3R1I6KbFS5/RsUViZ5fhDFgkAp9spBGdAHmAvgOqX+Ii7Zu2
	 zr3+Rx1tPbZfwIfD10HIPN00kOjxYi7e+6UNCcxWen6Yv2PSZjEZ6oaXxINjBlXobh
	 m00Lv7jtx3qoCT3aYvW1gXGiQalTau6b2kj/1+6Ed2ZoF23bBdK78SIbH6xIrtaLzA
	 hJ7tWvR69Ox/7kk4YZcWyGuY/41sFG0U7/x2dVIF5NcQgIoG4j5kg4bJMyT2zFLrAJ
	 cjAUZklDBC7RikN2bV21Zkx9Hwe+fVdoErH61iGbX7eoMEKTg/sOW3Qybx0UEnEeyH
	 pNkWQwU0hXR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3191C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168078888578.15770.17677756922595867233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f763be30e78c0abcb9b758efa07eb7b7a4974bdaaab11d81f7fac51e197fa3
Date: Thu, 06 Apr 2023 13:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680788885
