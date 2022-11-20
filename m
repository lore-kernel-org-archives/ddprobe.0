Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B8BA34
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AD5CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668949854;
	bh=4WpGvfdwxdlpc0pFPzMXDI6A8SQIywrXPpYTfTJ4GHU=;
	h=To:Subject:From:Date:From;
	b=mouOYEV1PJWTfMDg1/f0ofh8TDKoHhXr12ZcDRqQc2zF8iup9oeFxbOIU7A0mVmQz
	 z5VRh0wsK3dQFXtVqh/jUp4+Gc8eYe7lB9tVBpoYXprcsVnMUAKLB6TNL/6xz43X6y
	 fJuMx46QmfFV7hpEYlgIV6TzTYf6Ih9IDCAZrWCA4Dfu8GsGJRIGDBc9yGgcf0e1pr
	 Z/A+936M4Damzmfji6a/7OC4td6QU+JwG+M5E/sK7dRl3c6qJ7aN6QaCLqTl+lcwa/
	 rPqWlFkoHGKjClQCS9o3ZOUXIWvJvwoz/pfA8jj9bpwrmdNq7kkjAzTpwsHfLRT31n
	 TMVVIH8Hn+cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B44BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894985439.12412.8260673628528591772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb99c0fc336f3c549e55e79c5b0d21958fd1e2fa4d2ccb4d584db2e107dd10a4
Date: Sun, 20 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668949854
