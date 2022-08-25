Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E394929A9
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 11:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B938C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 11:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661425252;
	bh=pgOSJlm+lYfKhdli1iqGdrQzQ9/veBiMH0pYQX/iuo0=;
	h=To:Subject:From:Date:From;
	b=FbesFYX/7e8melpLPpSrxVei9+KkmjCOSVGFKzPSNr8NL0gZRr6gX+MEylCqVRjTr
	 rExR+ckvD6QagATD64HLxh1ciukh1pSs78M9S7K+PRnAhlRo0stqqzGB7vKMCBwAlX
	 xTyp6pqGuzQ+LGX7pF2H4q7RPmnJPnaglBhNQQud17WlORsLXvMCM9rsjEvduwVqBw
	 LchNBsfpSvtV4h1EoUE11YVJzDBR6VNBGX8am0EinK/3kAdh69+YXcx8nj71CbrQ6z
	 HRVlj92uqMd+u3kFX3G8io3TkcNyT73sVTnAsKrdvXDAeOQUk1FqLuhxZe55ktBy4j
	 wZoCdv3RcQirw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE3CC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 11:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142525242.20172.16870786521980938453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43175d3a59831be81aad1ef73c5b5c38c75c4bb937dc659655237af638f9b289
Date: Thu, 25 Aug 2022 11:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661425252
