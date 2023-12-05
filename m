Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04835381
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzM5JAR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77587C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701736096;
	bh=i51rrXG73w7APsfM+9uOieBUzTTByHxBNu27z5IWwWE=;
	h=To:Subject:From:Date:From;
	b=kzM5JAR04+Y0Pg1JBydmBE/PrECXRMm2lo6CKaWun77XFAGbN/gTiREc9bXyS33lv
	 JjJijlqmT2BnUsyt94MGh+lJ7y0vYGYcuz1pPe8rq12wcxobSbh/DCtMiz872g+Dpk
	 9rF1edAjM7x/Gt8Vxx7SIgOxDfuPo4e5iGH6oR8mo2SqcYacRhuDPL0Ag53nmeFZCW
	 vP1qJgOoSOs4F6YDmU9e+rFeuLQksaGrY4FOzR7MZDdBacXsIxYig/h7iD8sOlwV16
	 0tk4y1cxJTiEIzZu5sWN/0frGXyWsznYn7hkL7ud39aLzvYIj3U7llVjPSnvalsL/o
	 mNT3f47dnvq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6077AC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170173609638.13910.1038873573791188929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a7cca71f617c9d4bf37414c487dfb0ad20c7aef44aaa8d4feed082c8d41079
Date: Tue, 05 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701736096
