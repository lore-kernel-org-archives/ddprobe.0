Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD91529A5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8B9C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662498053;
	bh=EZeAZb3qi4ZuDqXjD8+XlSY7Ot7JbgH+nPVnC5kHi1U=;
	h=To:Subject:From:Date:From;
	b=KFHzbquhISPt2MfX70G1/OQVB5EqSUNJzBQMTlyU4e+pkRX1ZQk9WbzJBFLMdwqhC
	 y30D2rR6HpZL9IwNVhgfsBSayKM1veWi1Ol33/qCah9KKu59sLrqyUtAOK+1/3C6xa
	 1m/CbZCMmQR3ygPE4pznvzyphE+M2LlLjAZeVnz+eRHJfPnlcv3lOcRRyFnKKEEOA3
	 Q3TFV8P21ATu+ZbLHXJYSmZfYICs5zKx/gaAwLJbXt5Kg1vVaLXBriu1Ka4z3EIprt
	 ae3BxaLKF3HB/vOmdPINFaCdJVOMRGdSIO9LjiTun56Eg4vnD5CCGYnccYqk7owZiR
	 0DOspJlaZoqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539FDC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249805333.6684.17127358488103883015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84add090d6a076d615808b3184a4c329a74221d31b3b3efbbdfd2207a709bfeb
Date: Tue, 06 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662498053
