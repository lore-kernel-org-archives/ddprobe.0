Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A927F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 06:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E18C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 06:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676008985;
	bh=iNL0C0gRh8CSM4vjUsqd+/TkFwjeCbi/UYm1gxyyU8k=;
	h=To:Subject:From:Date:From;
	b=uY+BjsCsjLfXaQY+ZOaeMs7CV/AzUTz9LhOV2uR37F+qqzc0C4cl0O0DRjSMq+5BN
	 7vFRn7ZQ0uySqUANNJuygqlX5Rh0hmkuagQoG0/rTn3DfDonEE2cdVUGxpckH2HbJQ
	 CNtSUA810l/tVgOiOzhpWuRz5pOnCo9RDD31CKzYfn80BXMDAdpUHicFf+9xgcvX7z
	 fyJG1SD49OlB7eiV3LdlIv5aICYScHeYZYxk1BNJOCmIPkhsMUm0b9X1EW9QNse6fT
	 Qpt/XSdVcHkycZbbxbQKWt3U3wzbtF6yu6VAohe0EyV9iVffl15c6bVCyNM6ZAab48
	 fzCXOlqG3RBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DD8C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 06:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600898575.11543.5715989897866846390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ad1f74dabd81b9c24f2069a7360a4068c6827b526398a18b69c54fe3983b1f6
Date: Fri, 10 Feb 2023 06:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676008985
