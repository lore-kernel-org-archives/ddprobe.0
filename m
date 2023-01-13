Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6282F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848B2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673623887;
	bh=V99RW4M7L3f5iK87WVDbZ0vqMuaP8txCjPUGCL8c8YM=;
	h=To:Subject:From:Date:From;
	b=ibjR+hgPOKhqVgUR/gXmtZH4FQXoI5sqIbyK97uQVX15GSfFeXH8+9e7KEOTsEo9o
	 awkNzQNSYnMGbD/Euseiu8hEX7GtjQKJM90OUw7Wz64ckK2Ul9vsNewv951vETO4yo
	 q9TFj+25uH9yzs1Hb97B+w/cda/Ed9p3+ObhoZqTR5sXfmxq+OEPv8WyfFGqX0saSQ
	 AmUR9A88tSIaIQD6ImOCLxmya3TfaHoAHLUNPVIkmw7Q0+e2dMFMDS24uZzq8sKg63
	 NKcmnUSGWy1iMbXb/ytTfvHnYEppGzLycbiWFAgk6m0WxE5ZuSvkmnCjGdO/1nzoSA
	 DIhe4SVAAvjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691C4C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362388742.25553.8614524086430231832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f701c554283a7fc983c5f145abbd94f9d49043875ceb325c599a8a3d619baa1f
Date: Fri, 13 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673623887
