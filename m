Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479E410EC
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0413C4339C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683198066;
	bh=mdPEx6WWa4z+V9b28Wx2kuB0MRCMYtmz4/tEJz+2nwo=;
	h=To:Subject:From:Date:From;
	b=gvEg1W2Srn3ymiDWTXq/fBcy2wz5q1VspG21Xz84DQWUJJDW+HYHudIOzohfjjpqT
	 jA2PQpWR7VXyUJidd2CQl0j+mBllaeMlaSTQazAKAgPugGVnJOJAlCVD+18PPOTxa4
	 quFNhxHgiecxr7jI22SYxRdvwojHgFZ+xyyZ5tWhxAQ1jxmpFU90xJFYtCqKMYMoAk
	 B1IpU129SPq/UVNImfo0fB+kld7De4SuSdSVEpbhRp+PQrf7+T6NmVmWeZtIw4y5+k
	 5qkvRc/UOBgAzLi9Dt1BV6ISBylgpJId0cMkFPQv++xXRWpo3OYN9nl9RdsxA7wL48
	 h/64qFlGualZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEAB4C77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168319806581.7938.9467255868405499393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7f32ddddca7c4e0f59f4d08a8c71c3d18b7a02e0de827abbcf819278f4774c
Date: Thu, 04 May 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683198065
