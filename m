Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA099A40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8CEC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662792653;
	bh=CvjLgDvAZ1k3iv9wDpVCr0YVbwId0RE7n641jnJ66Ds=;
	h=To:Subject:From:Date:From;
	b=U/mhp0MhnXYoaM95ASxA0GREqTbwmExjR3hDN+gggfVSXIO7sKSSucybyggLIppVB
	 lS9bvK6eb8tSGEOIW7B8KCALiejc0BrTwnh67EWcJap4ZTpINoGI61dA0cZH8xM+T3
	 b0t/8TuRg/56M2PwbishrwQe92pVySUjm5RkFk5ymjw7Iq3xNIPZjoDWKtZLBkPM1C
	 GHi7f7jxPGO7R/wskOIifsplmQ3GjCdyEuX6jqt53k9OX8jMJCbK+1NipSDeaysbbP
	 5k6c8XC8geHRToUfD1z/4mPti2zu8kRhowJWMF15N6e3qbS5gmsuQ3FqIu9sbPT2py
	 Ed4d0zSc7nhIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53789C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279265333.28960.7398299157919175726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64df5965b6f1a787f906f3c75b169f4882096c09536eadf73b85a275f3d19e8
Date: Sat, 10 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662792653
