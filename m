Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA558BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8067DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670442654;
	bh=KdznRaPj8jjLBixjW/7ff9z5FU1Q+VQ5q1rO5zdUR6I=;
	h=To:Subject:From:Date:From;
	b=Oabg5N0mnAvE1Qh+FK+QwTWnxFkcPALrn/nncD9t7//svywY2+gPzmSX4c20u0TgH
	 h5eG2iFKfIfSrzydz9iluw+pjBUNqoyn4jecl2KddqEHX+t0d1dqB49iPZMOmyzUNj
	 J0kLIJPzAyeYQ4t1+P4QaVwUe2VLqDndkOGvxiNu+DGROWkkTYWLiZRYYuKhNRn4xa
	 wlozhP5yxfHvNjnFh5RWPm22r2yXYc4VuNEDGSoZpOtChmI7//IXMGimdkideguhIA
	 +hoC9ueB2TbT67sXRuG2bNgWRY297bNqOkbcO//qqdX1vPbeO+mABduI0Fhe9hZJUB
	 lvpOUTFt0s1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6358FC63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044265438.14770.11918212577948036453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014bd697d0fec829bc13c505b33176fb8aff78baa80d7c76e6c4e0279a1da891
Date: Wed, 07 Dec 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670442654
