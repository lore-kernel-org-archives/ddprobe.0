Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0205617E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 07:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650007918;
	h=To:Subject:From:Message-Id:Date;
	bh=6eePfnL9bmdCAjo/Jm7u5zll4Marw7zx6Mmyblg8eZ0=;
	b=SQkOAIdFHQBR+Y/cgjTiqEcnPJDPV5xKr6D6jLeCqC+LnX830bZzZSAz3iFjcICq
	mO9Grs1XW3FAdbjBhNFbAbNw9TYvh577YfqOEJcwLmXcbbChU6kASucK7hh6H04+LEM
	6bfAWGLrWIhIifjuw2rUwu56SttS8lhKZo/LlkyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650007918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6eePfnL9bmdCAjo/Jm7u5zll4Marw7zx6Mmyblg8eZ0=;
	b=dUQUEFM6GX71mxnQgcCm83B7VZSSZtrq72Citct3w2+nturPVGm6m5fF6jWuWSGj
	8dIDL7LdZq04ovfqbz7/m+rTPoZlJ3O+mWuouqOjfy0e/IJyRjkW2BoQ0Lx+N3TINuA
	j/weZL9ZXxr2/5ABMaHIV88/WQ1pUCpB0Bo6/feU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c22c6a8-56ba08ab-0f17-4b2c-90b7-8bd8906060bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32234efe14fad23c96f986d62bef5bc9f3dbce1f841cc5210189c99be238b663
Date: Fri, 15 Apr 2022 07:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650007918
