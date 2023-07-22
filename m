Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A7A100D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 07:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3134C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 07:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690009328;
	bh=pnOsxEhqJxpvdMYM9nDDOVZIeV54Xf7jfnAsfCdmlO4=;
	h=To:Subject:From:Date:From;
	b=mMSU8lUkBTuASBizprL52ECUdHLPTpm7B093QzhzudYol4aBvMxKNrb9x1HQPZHo2
	 txOBTGqC//96gU0mZgpx7iOIVE6Rn2SLftYnBMlolrlJb1rBbxarvbDUf5oHyQc3K0
	 PAc7pMh9Fe8V8R8aWFKWXt3G0hl4spvWjRh3alTWt5dm5LxHGr6f4I3YeWtQQdTcPt
	 eqpPpwu8bS5KwHZn+yCifJErG4OmiPFT1ja6PkSHeKh7I9erDZDjbD+QJWrlvDrcj/
	 COIwkL0jWY82meI6pkgvK3LTfL37MSDC/wPC4TPubEnGZAk8zXq/D1NqEZlNt8x7dA
	 /tYmOIZYi+FyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5615EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 07:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169000932867.8669.3313341225370361560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bdc6caea4a05fdab6f4f046e7331a90588ad7ac9d66f01714b029ae0b2eb3d
Date: Sat, 22 Jul 2023 07:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690009328
