Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AB8A40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71315C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662788453;
	bh=GzF454uA1l7CREu4ym68Jy1ItscXe8nv7+ySlNJ72tQ=;
	h=To:Subject:From:Date:From;
	b=drjCmRn7Mh359socl97q4ZvPn02Yzzc7VMqxxJa/e/b1eykSMjGsa1kAPNxAhWFn4
	 7GhVV0DWTWvNYr09FzABqpNqmmt1997R+OIahnyhnEzXxjQfbbjc9qHZcpjwioPWwF
	 9u8qnfyOct/36tAOue3u/SV2UrsaYNn3hidcfFnW252+rujhKgZJwGS6QI2vf6q8+3
	 O16uafmHfpZ+L2fIEEDAoq7AxbTpcH50QX7s7AdUdduAbxphmGuq2NkJZleyPQC+QS
	 vcpIkWWPmU1CN3uJ/YEcaipDYNziJsQgOoqWq8EP+VNXOObj/VR9QX5tUxz5x/xPbC
	 KiIk8rXPuAGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F91ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278845333.9777.3994976247685054108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a844c1bccc0a7654701cf42130c84695c0fa6ff84e99be5a0a77c53d3d8fca
Date: Sat, 10 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662788453
