Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467BD7B
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 03:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC76C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 03:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678419905;
	bh=6sJ9SC5/W4BWkuMOY+YGKk5SrDcZvvX8Lokbytx7Umo=;
	h=To:Subject:From:Date:From;
	b=FQOTn/JIJ29eMbsUG+zaHGtWVhmYhO6dXDmVcK00zne4MuQrcgnAKIkh9tHr8Dbda
	 qMoITwwtX3Qp05Awp2tvCijHSbrINUeyreKkPjQ81BXPrFhNA4JeRXyFajxMwhPsyr
	 RoOzEyRuaK6Xg7v3ZMdIIKsIlj/k8eMvhKJCVphAbOwjnDkUxnVeHhorW4Ex+HIwQZ
	 TFh+3MdXc4NXgQuASRtbAkrz++0i6N7++CFsErSwU03paSv+kjIUsQiBQAo3OlGmDT
	 545SqlDvgkQcikIiGtCSyWUT0ORlx917ao7KTDwD8/subB4oUW5bU5BvAi0RgqbigR
	 Rrizi5TbApAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFACBC6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 03:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167841990577.20054.1101104823881040049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea356fea68a981df46313d3b71f354d91cf32592eb67b62a61a614cb3a67d22a
Date: Fri, 10 Mar 2023 03:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678419905
