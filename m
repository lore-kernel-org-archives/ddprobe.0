Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E182FC03
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD18C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689328268;
	bh=sjqRqKc5V7JPUsH4Bk74yxoIdZFFDH3ytJV452nz2Xs=;
	h=To:Subject:From:Date:From;
	b=qT86jhIn1GVFkaZeF1v5BAg+sOdCciqVRM/4QqyXh7duEOjRx6vPtj9n5B7feroLy
	 r+3eczyD2mCNYCu8UKtmCa5kpKp9v6AVPVG+aIsqsipoSVmiMbQmHEHl9ob465QGeb
	 J2fKz/R9pS3/lYOyuZgM+X+gLc0YVa5IKsMsl6UppcCJgT050eOWZUvdS+E7vkxS+9
	 zHSAALtG6TgaDcWIOHWBTi6PRXHKyKWEc6U0IbpAcZY8pXhtxc+UbtNiKAu0W1whce
	 9vTgbl2LoQk+WpU0pdq3OZnFGJq3kUiiPK4Gg6gWjfcx1Mc2py5n7MGfZvgD42CPNV
	 Vlzb5zDihKSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB7AEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932826869.5360.16009429851817913199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0922271a0d40bc5b2433043b6bc27c096288e30f306b3f433aa0353618931809
Date: Fri, 14 Jul 2023 09:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689328268
