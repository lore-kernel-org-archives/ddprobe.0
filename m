Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96C15A5
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B56C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682730305;
	bh=L0tDQyps4dIXi3g+ckZUCq9byulpGh+6LkaWurk8t5w=;
	h=To:Subject:From:Date:From;
	b=ojiOHWOWx7TgFK/l8hGLTcA7qqrz1LuOCoEFm+JWpoOqGL0EDtmpr5mFhDAsPU9XP
	 2g//+EPt8+vIdYlNYskHzezk6bjTikYdBn4Zwlk0Nt5KBBe+tNtP6ZPgq+jZFzOm9I
	 q304mzl6XWNi3TKPd+QMrkDefSpt6L8w0iC8TVQKR/ihY/YJzmhX7yn1mt35UFYybi
	 WfBBsGi2/Itp8Z4ebqSCMlHz23weO7kF30y9QoMydTV8KQZol1Pv5kd8M4ku/WJmqr
	 /rBoMN/ELKAfS6JaI0nDae+0CYtPyOoo4CqAag4xDGN6QHm4OAMf2z32IIB+mKzP5N
	 iXyzCFqH2MdYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB48C77B61
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273030575.27396.637308082313027478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33caefd8a2d64f64df24a971e77ade9d608a8b2dd6a93c8424c2a5dbfaf7be8
Date: Sat, 29 Apr 2023 01:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682730305
