Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43047E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87901C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671446487;
	bh=USE9CNWfGDGEgyjU++ShRSbh68Pctino4nm/K2Ie1q0=;
	h=To:Subject:From:Date:From;
	b=PVsNkrqcCiZSDoheDMgSkFp6DgmMTpO56ilafxy7Md8PA7TAjx+RMhKUSGn1c0wS/
	 iRjIPPZYCSP8T4X13n1tOHsKFGQ/dgJ3qS5sSGnf+eTagt7z+1xqU+qKfHiNGuusyu
	 qMsTIQd8GyK/TKOAW0bW5NZ1dwg7TdjWfG2+mCEFvSLumeZ3xtiCevW9pgbXumqkFW
	 tp35vSCbQwT7ICt9CguCjBCROt5a348ZgP8BhwCPAp5YJMHGmkXNrAFAH2TfTaHu+Q
	 Ud1fvH9idQ9uQ7Q31lheEVUBtyElx+8CH35rk7ufQlVIlf5s+M4MS9D6VeqNkPJO0R
	 GrSGsF02bqg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B456C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144648743.7967.13457908971005927165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b771d8df50c5e13f0b9b33ee629f04f879141c2df43d286ed3be8c6c17f71df1
Date: Mon, 19 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671446487
