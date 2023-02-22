Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3431B2F3F
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDF4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677078785;
	bh=YQuuNJCYZp940WmMRllyTq/DyY6nNGnhTtnnAmp6z9E=;
	h=To:Subject:From:Date:From;
	b=Cxv2jTHn2QwBM0UJ8cfZiEK9YggRCn2kFLMG1tjmoaRl6A2DEHdwBfVy6ksinMfXL
	 W7lmAcl+xEaVIWFDXxQeac+z93qPmIwmjIeLGgaHINO83ghSbO1x8NnWjVan8lGcdV
	 MEyam7kmnUMRKcemVdsb3fbtxFN0BAH5CkPv8Nv0Ga9K1AMdZgO1JBWfzFdvre38hA
	 Kn6HKRyCrF9frQ+l5dTFEhM2wM/XZJvOt/TJJWPzW51koIhfo/P7IwgXWP1vrNYefQ
	 HmDOOrAdAU1kXN8Tj/af/KMb9dCYrlb7SpBnitjXQuoaT/3bTXabx9vZmHwZ31o012
	 Yxyes7SIzJWyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0B7C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167707878575.16152.10796119637526765259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87427258f921dd65a331c018a8a96fe10d09d0419aae0d773db93a995e2071b2
Date: Wed, 22 Feb 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677078785
