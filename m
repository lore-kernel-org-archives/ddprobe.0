Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A91737C
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 04:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11D8DC433A4
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 04:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678939206;
	bh=Ogis2wwNiSoRfolWff5PCw9tRdmHawJXPuuOs25mo48=;
	h=To:Subject:From:Date:From;
	b=eaBkg6Dpxvz2b90URmosHNF3vT2wmraaSHf5kqye/geEkRe9K4oA+MlnoK2IQr0vO
	 hNwbmxFtxBeNJQTl0zEwMthS70uFgySxNhL+KECGRtGuIQcEoO+7JJUCByHCmnOIdG
	 pDBvM4Hvb5hH9pueN8u90fH9UpVXoO5GWXMnh7ZkX+lNnUDQrpQT2w62R6Yu3G98fC
	 uqgmYSfoww8eQnnacVx9MdAdWi4uvUZV5snCYVmixIFzoUhc4VfUMs3RDgR5O/116V
	 bxk/4LDs0e7fSojQMninjHSjnyHcZBiFS05X1mznPrPacPI7P1bBUBJOqB8w+9GDfI
	 5+a9UOzAIZmFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A27C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 04:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167893920586.26434.460618842579820792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7583a957c9aec3f1552e50b5427e4ca5e459a86068eb9ea224a21ca0e0e82bca
Date: Thu, 16 Mar 2023 04:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678939205
