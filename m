Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10D223D1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE53C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664616053;
	bh=SwyIIgSITZJBLuT2K9OI0LLLLStljFWbFdmoGkqKQTM=;
	h=To:Subject:From:Date:From;
	b=Dr4IJnoG5aX24/z3ymu/cGE8GafgyvLtyiH/PxuUXilUY4tJ9ts9pY9HWny8r/ftT
	 SqcpVDzuBlKoPiuO2vz5fO5DDGyu9cVdSzemh/3pkWBC1S1T/pGGMcj3Dfkky0DTI6
	 ZssHK/Mwp1vYmp9Kdelb+VtnLyPuHW8Ufclh/to9k6RnjeElcd30zAbfzRN+PjWZrC
	 fK+UOOLi2itT5fcN5uNv7USI34ZZ4dOOfTO+V55HYVeDGEWMCenbU/PFbqZ4u6s+a2
	 Ny0bbewkW4DdnpNTeebBHVlwAXrfF0JJn705pXzmknYCSGB5VjTYxZr1ujXkJKPsXy
	 sI/ak0jFSHvtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535B8C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461605333.9765.15123820160289240176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf65af58a6f1ab279894c7261ec26c54bfbf312eb586a010397689ee242c1699
Date: Sat, 01 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664616053
