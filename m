Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B040F33D1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3DFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668630654;
	bh=9MQsImR+mk9G3Okhi7sF3+iWyszkVtPr+fUXAZjJ1V4=;
	h=To:Subject:From:Date:From;
	b=gcdIty/fY4gxOhXIL8M5yS6rwlpZDukhEH1lo9Bnlh+VVnBi96le6MyAIti/n0ufY
	 ErIRAu7125Frxh/klelGm+C8jqPd1vdaTlECXm1ngzK9he/NSfFWx6PB7cpSO5DBAU
	 u9qxBcIWOvX1Es+YQnK89A3fpMWJYZ3BXUrU7Lu6VHj5UknShtklSqBdf1pbEROQpE
	 c75EDUQLJVcBKwgKOZlWM6Vkmv7jQ+kec3ygOGRpzwXzsAhZ4SDi0/UW3aFWVl3wRF
	 j6CiR04zoqfdgLX+/drCW2PxuXsT8X7LmUcdFMRCkPgZN63MJ0fpnMd4q+BXl1JSuf
	 6e3tc4uOM/X+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C21C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863065433.28655.736210635419680144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f18aa493016ef6569bcf8ebf8272fa5e7b4827845e0630a8bfb46dcc2ce8b5
Date: Wed, 16 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668630654
