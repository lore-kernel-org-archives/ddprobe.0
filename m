Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC56188
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnYVGYLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CF2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696734428;
	bh=xRayHUb3SduMXWO/IdE93P3DlfhU9aOE9MeqR37xexk=;
	h=To:Subject:From:Date:From;
	b=lnYVGYLTdGjkxZIB7Z27LYk8Nb7euk2TqeqN9YdaA6YM+xa7SFCVDQ312xI2ln+8x
	 SPM6c9aZxFGkNg/3VrO3uldnwxyL9hbzXfaLdCXqFIART7EXriuWXS3/mVRbHZC8Bp
	 w4h1JjALm6I/CVegDHCcR3c70uaMFF+EbUgovjP4V1zHYix9a+Kb5rYqpXBPYgUSIY
	 7MTR+1+/wo9IYNkjdi0RgZtx5MKliGRbgcp57kvVWkRblQvOluGviF6hycHIG2SXu8
	 CCXp4kVjriPJUJrNsHDE68NfVglMPjcS9mXpFUEn5BOpIOdV61UIjT3x0lqo7gHBBI
	 5Pfw1Esy/6CAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F51E95A86
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 03:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169673442876.21319.12409780153511655697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57605abc94c64bbcc203dd0180b9d40d760301873b72f660324663e9114eb66
Date: Sun, 08 Oct 2023 03:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696734428
