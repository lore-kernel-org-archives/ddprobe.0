Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6111847
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A91C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687923788;
	bh=tnDd2I6ONA+fg33I4obRhfaADUbOOQn4PlX5jy7xq0I=;
	h=To:Subject:From:Date:From;
	b=r9QZ9qLMib20PWyc6XYAxO1nw8RfOceLtsgBA+pojtqeGGh1xMMGSAMX95P9qxUSy
	 Ye1ekxGnXFBhV8cv4vR+x0dL33LhNh4w+5FyCA3fedHliHjWPRxzvYSMHe7In9UPQi
	 Pa6Y/HmXIomWjZmwezT33uTl1C8OvzAybKwWc3xn5mzcOKKCJEOPO32IHHpJqCCxRn
	 F6Lums+QXnyemjkiR9nA48UsX9Z0YiMKLh92MuUMND+8I6VYGJ37PshKOBO8ynaH6x
	 bs+kaFXIHBpYhIqj8qvKrNUsko/4R3wMhXk6xpN3lutz22tRed/siIavxeUOefvyzV
	 G71IcB6j24auA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0893EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792378869.16335.6285140374529163973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4638d1e6d97205da9f1fd82ede4cc7468569b9d967ff9fc7c6f03d9a92f8054
Date: Wed, 28 Jun 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687923788
