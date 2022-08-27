Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D393415CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816F7C433B5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661643052;
	bh=rT3TDLI2ySZaoKonwnhPAyAJICvTQvYMxFkKu8ueRCw=;
	h=To:Subject:From:Date:From;
	b=g1ZZ4SyiRKHwhIPeYR6CgVpk3NlLLdJrwzxdjEqe+nCFpK/j1WmZpvy5dJRj/fgs0
	 s7we9sJKLdyUTerFxZYCuE7OGA5sv1ezVlvz9DpvAd6uI7tNaqzjU8/XeBB7DT6Oa9
	 9kfLTV4A0q0w78PwngBNH9qQlE0ZwwH6wpIx4WxjrvZpudK866PUSidxrVyOG/UpVv
	 ARetrRK7Ey2TV7uZq6DBxwDf2vOS7gEKC0GxwzcII7ltQIl6BXffI04mt1bhIfOxJ+
	 XHqunjRm5YUi3HfGVX2T6djYXiVV7LsHUY+7ZnZtfxng110Wc6QPyiavQWeItXSKBp
	 OHJ4kxivRCuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6213DECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164305238.29674.14689436210858910492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f584b25a8c792d340d599034121cbe0cd65da8e1f104747ce3be153496e145ef
Date: Sat, 27 Aug 2022 23:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661643052
