Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF97184
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825E2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661649652;
	bh=lIvkxJx2L/bYxE6AH+dUOpIBZmCWkUrlDjO/EHxOMr4=;
	h=To:Subject:From:Date:From;
	b=NCRY4OCd1Pi9U9LPrmF5yuSj38BkXtZBBArAvwjrCca+jZVxSjyVP6ObYaAUIm51f
	 +85fKJ+I0+aWoywz11gxzRbcNubobpLbiQb5ZYjxcwpRB3z4SnqylJXoRyXJd0jEqW
	 bi2kNYzD+0XHXQ048FXQyGJeHYIip5Fn4IL2VoHYHhifvsB3lz9sKDvcQ6ze8fUw2I
	 frxWBiA2RrBDkJ1yhDFUSA++Na6QlhHZ31YvwdUKQ3/gxw18RHDv5KNMSn7Qi7ggum
	 yJ/urGhiAbx1BE1mirrcGDz4zsLjDuOXpXumYAURlaH3Mi/AqPKx+hApvyyv1y/BCS
	 JPL67ChdrFq8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B34ECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 01:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164965236.1766.12391397278592412296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33618ad0f2f68b309d5f8a3fb19c731a2be8d6281aa3842d014d677f6694bba
Date: Sun, 28 Aug 2022 01:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661649652
