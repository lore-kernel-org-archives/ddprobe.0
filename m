Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF26415A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B606C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671679287;
	bh=LRqccUTJdjoyrT8FBPRqsr5cr5wlIBAx5LxvS3IW65Y=;
	h=To:Subject:From:Date:From;
	b=RC2JLoY/x6Tj6AHSF/1svuSL0yK+MkPLIt4kBsJZyraHKpJrM7WzBvgU/p3HSIbsu
	 tJ8u91XTKfIA9jLm4xlwdbVGqPNhUNHbIydrCCnDClWmwcswvgWoy594SfRPoV6zAO
	 Nntd25IbUX+ITMx0FTBaeDf5NyLDpP9kObQOmfEEymVGEUMHCN+3RMN7ApP9wBQy1/
	 CRdBdIalIXUWY5VA549SqiWWSF8JCxCkQDJ4jGKtqPgqXwRKmUJEL9KYZHdDeUC7sn
	 fz2fnHlFpikXIFRfJqnLBL1CKgOQv/zQRQOVNdEufz301u1m2AC7F4jrFCfeAxbiOw
	 AUfSZLeCjmtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F05CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167928746.10536.3886992527226926015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ceb152c3e0c35465899d4a326fa34bae72f35534655e30192de843eac7de50
Date: Thu, 22 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671679287
