Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAACB28F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E01DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664709653;
	bh=XnQkZ+0jTyjbHPewZssUTu9DfA0MniKkbU96QO7jkIA=;
	h=To:Subject:From:Date:From;
	b=EPrvprQOxw4b6w2ZdDhYSTT40C0TWvy1iyPsxX3bc2+CBLdkyjaDI+pPTqpHZJIJU
	 ellV4JkWJmgjY0k2ujcl7obE2DphCN7JYgC84LNTDptz2fZlDr1x96mvJwBLhWl3C+
	 s4RcBoeRpoYtptnJFOpj8/9c1qrC1mlfXv6oMW3/MrQ6GXJ7vpIUpjObKv4MrGYdmR
	 egRkVob+8PBcqyL+MhfXIrWqojORMum0Q4iJGZ/PdBkLdf5tZqF0ACQwL6zkfbmPDw
	 UhZlRJpRo8FcUP/RBOzrG50gUJNeZLtHzgMmZzXrc16O4EKliujbL5M6Mf8KGxrK0T
	 JFkQVUk+P7OHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A7AC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470965331.20827.5568816458182740506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccc11b582006899547263f2a9a1edbb56ad4f648ff887fd97e08c1ebefeacb0b
Date: Sun, 02 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664709653
