Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7374217E9
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 07:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE780C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690617128;
	bh=YpHrGFh010UzEbjqbClNFSYFRfqLhVUzNWuOmWRYuPg=;
	h=To:Subject:From:Date:From;
	b=KePDCOxP4aBIZ1Xexjcf9NuqWSSUcwq0IEA5VV+LbVkjH+qZl82uLc6knHPM8Bqmb
	 cqK8SBVutAi+mrIvbjpV9bR2WRXCH8Ht0ddi4+RDNHne4LfIwEVx05MY9bNGzPbj+6
	 c6tca34oOgASS+ygPsn03njGRd3eolN1RBE6o/c3vtXEb3NTJJ03JcW8M/9JSoypmN
	 /e0VTE8IPKYmadfVU8ZWNXSFoGmXXK4a3Y1UFlbkhlqGvZxxoJLm3vSTL9AA4h4uEF
	 3sDs6pcC3Wk7kysT83zbwNEHz//VYx5fm1aT/ujRcvBbtISkegdP1cgGPjfNWgTgJ3
	 2x7ULLAYdMK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E14C001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 07:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169061712871.11959.11515108577193685781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564c7e7a41b7abdc6cfdcd64d1defabbf50ac40a30158805627d5c7f03be7951
Date: Sat, 29 Jul 2023 07:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690617128
