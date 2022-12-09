Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70D763B7
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE09C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670601087;
	bh=AoKRgj0BFXB4ZlFfqVXieLuVrW0GSUTnmnWHIYF609M=;
	h=To:Subject:From:Date:From;
	b=dWSxx73zyfhAyycHHiLPr5fc2Ns11T3ncy5aKhgTVoPRZfb/IIE5niIPNIFxszmXJ
	 3wMgkaZlEIN2pVSJzis16u4UosSOepIokUtDAYqKM0jNOU7TCJoqXCLgbNOBuHv5sC
	 tU+bGvpE8fnT4WJp9JIOAbN6UigLpIGQ53Iq0ZSNg+tQnPkJPG31ju3wsT+/8irlgV
	 sddlwy8Uc5d+F8RKm1KqLKb+aLh+QJoKD6nLvmflKgBDTzK7hNGDDFZWvqFfF8g3wa
	 D+UJzH67cgqwcN8vvTSvaFYLfteZHgzTqUvTHfxuurx8oa5b3PW8/Uk9Kf2XT572R/
	 5j1UtLSh4SpUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648D4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060108740.3254.5810541859541880814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7111ec346acaecadbbad5257a08d81723f2ad2099a790f2e11af955f86a77ee7
Date: Fri, 09 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670601087
