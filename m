Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410D03C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB043C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674948186;
	bh=oFVp+AlIBJyEPeFYbeI3IcuCtbasDMZNVZuVkEMWLTs=;
	h=To:Subject:From:Date:From;
	b=sU0YyVZ/2eWn7H4CKSj8m5q3MraCR6EdQl/in2CFxelP2q28h66weeEQpQWAt9x9j
	 FoGColByWFTv8Pofx0SBBhKIlwIwSePVgGGEcxWvEkbV/wtURlqTKlfZAY7+pyzUUq
	 tSKMEwkMNDQ+KRl1rhQrGA2YPQt+xQa/uDu/pAIAan7kl+9fM6UyZ0yBr8ToJFkVPL
	 r7BwSetLeC2Cg/hIG05Amelt9naZD22eAYKVJkVhO08KFGKYxZUw0l5MJY8fMpqDCy
	 4M84TqLGD+4my0Ha7S7+VdKzRssYN56Ablraz2sLEF9pPqGzM5nU30vJBcGGYn40NF
	 eIM3T1af/lTMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE21C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494818581.23920.3302945489123998850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62ac480833fd4838e7202ab77a7c0cb4192ab855ac90cc95c29a8112c2df2dc
Date: Sat, 28 Jan 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674948185
