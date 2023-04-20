Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283F28F6
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 07:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD278C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 07:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681976765;
	bh=Zx1tVrshgimaXGXHOBeC2+FskuWehsmsTO81JA7Yt2o=;
	h=To:Subject:From:Date:From;
	b=ofvS8PT5jpPUszeq0aiQYgtslHuNpbNALrEglTx4Dw9+mh+X4wsUieU4Qne8vtmy5
	 LCDeNJkyOHb28uLnCJAF7XzWf1W0DPlvUPMyo8skouFVp7dOh20ziFojFddZq3D6Fp
	 4sR41yh/M/cxf592+3naJP73YnAGTNbsXKxqzgCbE4vDs1lZ9x4xClIOLIjeRX2FeI
	 5aS604+ZOFlGm7rN0/U4q+GPABbcS0xFi2QuzAs5WxFrAfiNxHkx3oANklqmn9xD6R
	 Qf/m6dFtlX83l3tpxUNpXXBYEJKobs/SYeOI8R/yPuIHI0MtHjUMU1LbePlHUWdrn9
	 NffXBmwlQD7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C063CC77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 07:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168197676578.7547.3197188262115975616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea73e36153aabd543e7e8c3ef55efbcae124e6beee749e7c94a0438defaa9cfb
Date: Thu, 20 Apr 2023 07:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681976765
