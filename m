Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC46A6ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80320C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672173687;
	bh=lNmF1RIj8pndxDKGbbJPlHt8+oIzv3N+V9hNxapIZkw=;
	h=To:Subject:From:Date:From;
	b=uUHiCKtAFNXiLwZIL/d/1h133Xo7/zXnYgFCBYPBjqaue1B2EhCQe1eoEChX/Q+Yo
	 CYyU1ERusSAg8xZmsXRkgJSZlS3CxhbHYGm5vC8DKKRteBWM3Fkn7UW9niVa0C9kYo
	 4VWyarUzJowVYrXOm4EmIDduNuv1hqXqskrDTZZbVNP4TB+GORutsWugQWO6E1aXml
	 5S1kA9GXkzjtA5j3cI80rO839d+Mmipfp/OayIF1cR2Xccg5PN9qvdyhoBEkGn3NDf
	 w6uabRsrO8URvC09SOUsjKHSkoEdwdoRIRjSc7dQfCGRUOlNFnMuAGyRfLKiRHZOvH
	 hv5fUZKpYoJfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6533DC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217368740.18352.8327509200638863132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9527c81fa3acdd5caf3c56200c120e884e99c51f131a677aac014dcd79d8d9e6
Date: Tue, 27 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672173687
