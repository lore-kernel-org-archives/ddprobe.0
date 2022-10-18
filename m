Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5984C7C
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 834F1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666107053;
	bh=TFrARfmlkA57oJZSJ9weooWhpAH/1Lk74mcsopDHmzA=;
	h=To:Subject:From:Date:From;
	b=iVcSr21dbdHRraEiwowgVkPsYQo8YQdMd02B1TmrhI0FVT22G7DHMKnQguC2OAK8F
	 zG2+pmIqBGwzuKA+RmvyaFrFxwf/fY6L1mu7lp+UNFA2zTdv5reow/jHx8JIJgfu1o
	 vjO9QBoLitYKJIXly7DtPGufahxRt7zsY01ak/wEw4l7PWQ3jzl1YTHlaHiuKprnY3
	 8VUq3bZu0KzSbLjFnPjzycO85U0zcGM63IyFQeniunJnFC7SIchrGL8YH+LBJBpQq3
	 vyApwXCuP8L3Ov/o9cSiItqZ5Hed3CSHs0kMns5iseKyboAd5ngSzLN8uYViYt1NhM
	 8vvID+m2g0G3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B95BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166610705336.21663.6420970158442492955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f42383e416f52d580d6613e5acde63a0ad6577255cc2d03f21bb82c32d5d97
Date: Tue, 18 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666107053
