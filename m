Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EDB8F66
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA1CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 22:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680387305;
	bh=LDbntHdjLYaa1/H4glkLL42HjowQhrvvhBC+kexVG/k=;
	h=To:Subject:From:Date:From;
	b=ZEYJxwRrziZITM01zojJudAkVDWLPQ/3N0RcsfGEo3ahOvbkoVytJ6xbDSXOBCaU4
	 DseTUu+I9e/lFVYNd+Tj4cmynFBHqy4i+Bq+7EIIbyQEXjt5XSZTa6b6CV3Qnum/9S
	 gFVFhwjDAzR6HU++jV1i2mSPQ0ZN+fLwq6Aqwtbb5PEQmFzsIJvxL19xyOmYeGvGN5
	 rste7oxHNynsfLf9Ofsbm+7ntjaU+Vz9pCRCEj/+NPjqOFwxDvdnJ9LLFrlww+NTFx
	 1kpQDsBQR4ii+grTdEhc1cnS8WBABuV/ZI/34+PUg4Ijs5R0ZOh+c9RwUF16eS4nQ1
	 +KGsDArqba9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14B8C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168038730577.25012.13050349870101032320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b9e16906292aff598dee58427081b111998d20b93327c50c2a66fd20ac5bb2
Date: Sat, 01 Apr 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680387305
