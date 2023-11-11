Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18086184F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa3HMXyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BC0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699670896;
	bh=Xaq9akdQ7a7Z2EXKdkZT/fXK6cRfRrKCvqsZLbrp+d4=;
	h=To:Subject:From:Date:From;
	b=sa3HMXyZpDoNH3oIx8ECsNqjREy2VNSq4vCNHLnbxPiGK2GKZnYtVbSUX6U9PLRnb
	 vEOy3R6aSjBAUYRKwnQ7sn1TCNa2N70/9P/9vS9V3ZT+f2mjirnWUy9y8+25v+OE9q
	 VLCJ0YIPT43+Dkpapg9+AM6gxPm20KlgxVDgxQUOJw01OPzlQbLsaBXyAG7C0dmTlb
	 hHVyYaYKw2GQo4jxhrJxnOCCf+m/U/ds4VY1DYBhZBIn2gYRYpeAZvmQWQOGHT9aRd
	 nwKtFrKvwF+Zu1h0KFfroN7iaIaEG1sLdMRUCPXaATkVx4EPZrkdlfLl65zzFrZCVc
	 v8fXjEL3uSyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647E7C4167D
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967089640.15555.13581143968012833897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123c619747968c980dd8d1417cf3b790b3b951c87186f9cf6bb5f098da33aeb0
Date: Sat, 11 Nov 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699670896
