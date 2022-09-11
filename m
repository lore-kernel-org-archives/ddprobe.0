Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49477F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC68C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662894053;
	bh=aHFCo1l51G3NUE3uD+5Ee79wXkoQKVlIRrHaKvzzqb8=;
	h=To:Subject:From:Date:From;
	b=eA91uoAO0otQ0Kk2hMOQvtqerFpbYYzAWe/4jNJqkZXcM/14xUp+kg3FjrXn/z/TV
	 hFL67/g0UQYwV9hT8QbHHl1hVcRciR4jQdYR/+Rjd74YDBnmZsP4Bw6IgjTsEZeGWp
	 JHdL68nDENi7JX5vz4WI4ppL4bNP6OWyRGJuAEgCejg51Cs3htG1x1r2UebYgR4Lfm
	 XPxFBksVO/yY8xvXEVELABCUhtBpGDVZcHw0ZPiTc6ZXkq9nc8YrrFfWgWHVyUjxcC
	 LWieGkuOmNpbRoNyzSMS3TumQa+54R2E7nFEQqIv0I/dNNH/aFxMZHtJzammXEdzdK
	 TJflGioCzUp3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52206C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166289405332.4055.118333685599468269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93b8f1afc4dbd7040381b64b5d5f17c368e18b93634c02612c70e90e9299f71
Date: Sun, 11 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662894053
