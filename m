Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396842566
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D914EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683400685;
	bh=ukPHAOkWjSm4wUlGwBh3VfqTthkSYJ96T+MdfaM0iI4=;
	h=To:Subject:From:Date:From;
	b=QhhTxaLB0KWhDtljNTcNG4e0qzR036HajGWWGjpA3bvcniyVnV/T3ntwp1jnxW2zA
	 L82uSbPrXvSNuXbjiFDAifGQGZi6k8+11p7aFOmlMLA5iDv/Gxs1EFKUUEKyqkcEgA
	 CtA7AhVhZRaYXfTBo8QZ1LtCjkJLqyE4MyMX+6cDbZqIzZMHe6Ssc3Gg4pToHRSxel
	 onsXXWulNrdD439WZiPv0rihtokI2FmTHH9hTFncv8qO7myLy9MJXC0OwbsBgPtQ7o
	 /e/V34enfCZNyHtEuXBunP50IyYQcVtoWj3RtuZwzEvQsN8hom4iJFe+CP+SwaE1PH
	 gk63eq2Jz8qvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD39AC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 19:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340068574.5481.8511835147900092052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa87f032a9b5b9e1f8b6ab6a3a93389d65bc4efda88eb8ce4028033665f06c37
Date: Sat, 06 May 2023 19:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683400685
