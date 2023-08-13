Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632578F72
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 22:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E70C433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691967188;
	bh=CeGC9ntZmBHvoGCA2Ep4vAADGcFv8TFd1m8+lN4Tvv0=;
	h=To:Subject:From:Date:From;
	b=HWlENCt0wCMl/BQokOmBwr6Jy5A5k1/kk/1gih0By40DGhmIoYm/ucB51rvY6rmt7
	 UfAadDCOoBYouaNqULIYXsdjCbAPq7NL2+dDSTwX+h+MuyMjTLFweFsox0ZAYf8kjh
	 sjqC3LVvDh/G8uIRzY1AhWjhBlDK6YOXSgvzUmEfFRsYaggEdD7F0Eu11DWcnALSR/
	 w6mcanVa0O6VnrfiCfQFUvpn/+n0Z5JrjWNWujDlHjR6w8f3avYezPlqGTjiVcfm1v
	 njR8EjLY+JVWBD7Keq60svjnigdC0G2VEy+zxVhT5XmO9HiNAHpMpnNWW0MAN99V3J
	 LqsQw8eIHsKnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95DCEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169196718866.2648.15349111622801139554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd3c99a81a0a59ff095c1a7d4ec54b7620563b8b1c780cb1a7b6bf6bbd724fa
Date: Sun, 13 Aug 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691967188
