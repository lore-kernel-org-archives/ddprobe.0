Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EB546A2
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5A2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694019848;
	bh=HUz3/LOfxGXjjPl8ZWR0JWDizh+fRQvSrT6nSup8evk=;
	h=To:Subject:From:Date:From;
	b=RMKejvTX6av+C9cFHcdoyo76Ci2T9nKPxIEcC8VMcGgccrUX172pJvC/LVd6wcFgH
	 9n60Fmh8ovuPDja5MJ68/p6iMqkj5avV1EyjzVDNP8HsQbDuVdqQL4bltYURtMpPzo
	 l8+0QNoaFejz8FgmhIpU+GZFpzWJ/C9ovq4zYHsiZhjYrsAhI3OUYRGsJdoERkSXiq
	 HOe5wWWS43PW7ZxIMpQChLs+kROBJd2w7JHyn22bgDSBsrUygCogs//sZ707vUmxol
	 rEQ7Ci3BMyxTYtQ8VoG7uwFbVK3JLNQH53ob8jALtJuU6ZBzApxVxuqh4qrnc5crcg
	 Xtfj9oLfPWzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C8DEE14B9
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169401984874.21268.17692984071850108262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bc81f4b5f2d6df0bd1f7461cf87875f43d36d2d7a01a12edab611e504a3af4
Date: Wed, 06 Sep 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694019848
