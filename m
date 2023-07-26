Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A509469
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4977C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690358528;
	bh=xGdCV94IG5wbrUmgT9u1GnO/kTAvbn9lamFsQPDx2qg=;
	h=To:Subject:From:Date:From;
	b=aT4HClGg+8/O4xSwfBQT0Nhu+iVxiHQ/HXF+8D0airdeDKNBLtPbpJChIuUIrmH1i
	 gVdnw4V+UU9h5Tot15d5i7E8skGlxM3uaaCVwKD9lqljuuRt4FsJqka8+oieAHKjvV
	 KdFFHVgRtM4Csn6dBnndayPEkmpBZYktnH4A81x7ujlTjkkaAGz2Ja/pTCMT/+eGaE
	 GtT8kY8yr2BALmRwQgXhB4HAOl9/45uLqC132FzTt4YpZP8CxEvgFOVitaQ2GMKRHt
	 N/HuCer9rCRR60AL+xbjHcVQSnjfsigRoCuBKXX3O5vcI4eu+JJhS4VqGjD1+pYP08
	 KRM4hNEeKHk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3320C001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169035852872.11567.11246350330507120545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1423c280c24b1b752f8cb99a61e6482f323346c95f618519828bfdb9919405
Date: Wed, 26 Jul 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690358528
