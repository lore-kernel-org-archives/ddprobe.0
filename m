Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC6C1FA9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE05C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687241528;
	bh=0DvoQVH5ztNH2tq+xg3THRHZge0pHup1J/1CCSrTQpM=;
	h=To:Subject:From:Date:From;
	b=uu6V8T7Bg1q7gR0Txzxp13oC/Ag7xS9GEamRYu+71301H3QWjJF+QEpv/ZsUoUPNh
	 TjmT19hgTgZvxD8IBeBuRuhdW1gawOLhF1otdIPYE8wBMUFJTYyosMWME+PvhkA8sq
	 gWr1xqjOcGDPzaNU+bck3i41dxB1h3M0gjl9PYNMfuJ42vZQrT55QLolpwkpglIbe8
	 N3tMYyBPg7HYjESCj3yXXpBFfjapMUnp0cJPXfDGp7tmO5zc7mjDHLf2UVo6zh62L7
	 OFtLLV0CaJU3SVbYqdtAIgQhPb3uddZbQirQZLhH/m/8leapv0Ebt3qV+Zpu5m4Gj7
	 DuCyo93BQeGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D53EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724152878.14269.10452115471714993803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f1bea9d1ed07c82b5bb865ec1e8c1314c4bec47cf9dd1ffa6d824195b41fe2
Date: Tue, 20 Jun 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687241528
