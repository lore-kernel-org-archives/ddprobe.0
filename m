Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3901123A2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 06:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF902C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 06:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681884845;
	bh=Ls8DxSE6ZqmvSmE0rFLtEJpBiE//S/GK/wH5OImyB7Y=;
	h=To:Subject:From:Date:From;
	b=n8wUjvtgmKAaXtcTjNz+JS1vkjLGEKJHKBMg1ZrY+jei5ZH9ug+CjczIvj/x0Lrnw
	 YpV58x9DM7Vp2kqgcT/qn5fh2cBqXru5qUDKDDvje0iLojFlLw9ajQnopnSWhsuj/U
	 lPzbdsFT2hk82GlXxE0MfcwrCCNXdEL4GlPJvYASUR88NwEIpBFniEFSPQzzFCIjtH
	 dLFOk4CqtzABgJ/UGi7Y1CT9qFTTF/756LYbFbCpL/STRS4Urt5c8xopzURu/r+rbg
	 kZ6QALtGBS4SFl7V5NmxwPtY6Ra2vbnFUSETvIybu1/QjqxbOVQjoX2AD3PysTI9Fe
	 dpLSe4IFNBMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C22C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 06:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168188484572.13033.17693029235021778040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a048fa6bdf07d9c1c126d6e1376b86bc8060f6e44b6a1cd83aa31110cdb9ff
Date: Wed, 19 Apr 2023 06:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681884845
