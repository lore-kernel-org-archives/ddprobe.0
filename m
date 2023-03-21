Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543FD1FA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E321EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679377685;
	bh=tzrv0mgBCqKI6S5BoQGIQr+BSnbK+s8jwWo6V6hGTio=;
	h=To:Subject:From:Date:From;
	b=Xp/wAP48ul0g3/y6lSPv5Q2MVHC+fop5BnD24R0ooM1yEqX7td/D5CLXbzzi58sQg
	 1O+v+X/IYs3oYwAOuYNYQBSUnBwPdFFMlpnnzjNTlgyqzDuDCZ8MqmNMh/4IdfiHaN
	 eWFtasvdJL7vX5yhr13dP8EUSlUZ8ralnIlTNTn+5HukS7VFoS0v5y/5eiOV5mlkGO
	 sp5Sc9bV8/toTu2w16VRLSfTRw6yo6djtkoB/mMGwpWOQr4hfM/vjn7qTY9QPgqQjs
	 tyMKVIA6N/9aC+vO1bBz3z41WIgEABdeg91agFImIRuLLI+vLZfEhLW3JjXVbi4mYe
	 B7cqLvF5Rnu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C895FC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937768581.22199.12129551560251671936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af9bdf855eb45a5bad51f3b830114fa94c737586c04f08c2486a17fbc9004b1
Date: Tue, 21 Mar 2023 05:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679377685
