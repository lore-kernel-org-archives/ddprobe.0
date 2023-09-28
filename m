Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CCE1FC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 05:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D077EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 05:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695879368;
	bh=3yHIod2KmJoiWYCd3I8/v57LJxleoTtuB8Kn1dGCOug=;
	h=To:Subject:From:Date:From;
	b=mDpz58UrswNYqf0OW9JjrBmQbshviKbmf7D3vrJMh1fHTNaOqPEQ86tVDM/cbmPmN
	 S+PgJRfUg/CmplNPKzeOdL/Yx6ksQArw7KK7m2qPEiN0MR+uwysa77wlE3vhnpezqg
	 quT5DzVArOBqAnnoJDM4QKc+V18obMLwDpXt0rWz6D+f90zp7il5+07Kso3LZgCONI
	 6Te0MKDz1bq8qgIdjp6oiQTG9X1xSq7Xz3tvHBcZBsCLrsYNa1cgmZH2m4uvM98LyQ
	 hLS999rwvAyo1Hh0LPqmkuEf/Ppn/kxDrVBk2fXjMTrLTWgeway8RxJh+wHWgCMS0L
	 IjZOQeqhXdjXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB54CE7AFA
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 05:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169587936868.6103.15861677510880952653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5410b97843833ffd6504eadc11e15622728231ff0fc0aeed7e7269964622db0
Date: Thu, 28 Sep 2023 05:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695879368
