Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775BF7C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 00:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5365C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 00:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686098525;
	bh=3nwHfKpaiHMgY85zicPfG114Cxs1X+WvAwN53+7wQHg=;
	h=To:Subject:From:Date:From;
	b=Ib+N0J25uOrh31c48ggqkg6paxfIiwO8AAoMpSZM66Mh/WC9l26n2T9sNfaWbwPnZ
	 dcg4qEAQeSbLBgNEOoAgdDIA++hKY6wt45krkuJBb4SiqoXWtOJlzml6LO125wsya0
	 u//pUgLCoZaLZ9pyyetE74C8MUMLPq7MMk9AStFr+ds7QNj3D4F5UPyYkx7Q6KRGcR
	 clMJB8yfRWEJiZKJG6ySOQNp/mofhtSvsM4CjCgrPPmasDsOiob/BEFuuHpWELPQfE
	 eF8Ab7XEY4RoYRXzF/fdfUzCGEzjYbyyOAAhJ+KF0Fs9BDhrason0f3nMLJK955lCm
	 oFbG6v9LcIMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C8DC7EE2F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 00:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168609852575.20099.11047777665595997007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f66f7cc044c3eeff6c9246b36c7de2f4ea97e8bf9fda16ceab243ba4c39b40
Date: Wed, 07 Jun 2023 00:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686098525
