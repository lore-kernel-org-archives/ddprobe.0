Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688E2525D
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17E7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692534248;
	bh=DuFXFB4vQDQci7+YZ/YlI72DCS0iksU2iqqdzm6qJTU=;
	h=To:Subject:From:Date:From;
	b=cSPjSO7+SW08fesu/DKWzcRw4aMzyd5amakfJhcx58GPSvdEgCc5NYmVmL/amwUNe
	 rlaiBOSYSaB8z9D72ebpqooKWlGjgC9SicHYiXozbgvFliNJ+R7KioZB2kOLw1Ulyb
	 S5SZaihJalIOZdhDEk9xa9kvDQgoTc6PRVCfUBy5fv28kI8Cm3YGKzJdw+PqyEJU5C
	 JvQBcLGvFYTat9yGRExjFUiCxpwNtsfdMjESiekN0k87ZbTvuu+pkxURpqFBUQ2h6q
	 nzJkL2HI2vaHeKP6L2JyvebVxlWqzY1EcrT6IzOT6u0mcBbcUX0MYa1KlzX0KTbzPa
	 LTW0olmPemSeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF17EEE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169253424867.23712.2421345390311551820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31ae528ca36d6b4ba7e753e27e7fb3b857f77f16cf3874b4eb7021af9e556d2
Date: Sun, 20 Aug 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692534248
