Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF44017CF
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6DBC433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665580853;
	bh=wrJoOfHIOH8ov5U4WWKH2vzJOcOowhaqxNIFaWUT2KY=;
	h=To:Subject:From:Date:From;
	b=Lb4LX7w62vJT9IwKwOGYjWP7I7+C+hJBapii5jIs4P0VBHfs7JIMz2zB7jaop81Wu
	 xnna8EQN4y1s6WtV2i1x+bB7DEZKQsLkfOP29vrr7EN+om0BXXTtKnmT6z5RvYm0qm
	 6YG9UQQn3nABMMchLZRjK32ydfj7uhSHfkOqGJMaPhomIx5ICPfWhHGQ5aKmJx9GEh
	 M7WF9aLqG5eoN/CEx6YqlFgxQAzskNoJUAQxaRv8qbM7ZFc0S3ysWFi9VFUsYAL+NI
	 7/pE7ecyT2kpBslYzgBDGECYJm6kiTI7thWnC5MrNdIayup6vpQ7fq4L+mA7II5Lyn
	 MhABsQ1MZNkcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5214FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558085332.29319.4400414304177443637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c46bd01cbc908c0ddde679840d268dbccee2236601ca083f144db39df0b27a
Date: Wed, 12 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665580853
