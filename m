Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A1A747F
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 19:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4045C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 19:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675798745;
	bh=VtQXYFAamuzyQRCyMe/Mp02nFbSq20GvXXHvDJ/aEg8=;
	h=To:Subject:From:Date:From;
	b=SUZkn6iPO3n9JUHaBYqNrksAjRqWJBs62/fKV2sdz3rAf5xT8epZjba+akb09n+FS
	 +/Oe9u7fwVuQoq0TOUZ2swZO5MzaqlcrUJ6BzKLsqsgEe7nIWlANB5m/B8JMIvZJ8+
	 zor8rSb967aCMam5i+axSH2uaYANyMWEvHIeIMcv3gntO+GtCkIVTygyEYw5XXLVAB
	 7Lrw8SlLr3BpapNHR/vWKWqe61rpKXPikERhZNQoxaYw7pYMZxkheviUEVA+kj17pn
	 Kc1uV4+AdBqBgeWiTUXkp+pmncxjjuahxNT5udT4SUgeaU8P0Y4SkzZAv/2jlXD9Nu
	 7tUV03v1tcAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6585C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 19:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167579874579.29199.18189927371641819142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4188cfd4824aef593a2cf26fd967fe4e1d59f587a9df881eae63dd68f2c0ab
Date: Tue, 07 Feb 2023 19:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675798745
