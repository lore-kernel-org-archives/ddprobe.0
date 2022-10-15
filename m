Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA49A36A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD0DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665842453;
	bh=LZv9Tn9XVyMEIyVCMxth8KohvR4KgM3ln/ihzdNncCM=;
	h=To:Subject:From:Date:From;
	b=qdbbXAKFnrnZloGfZyrHxJVBhFWznl3ai9X45mdcztKcAynVXGMH4eOrd7OAi8Uy2
	 XJjN+aoUbvavR3Qb4ThqXdkiJ3yn2cGlsa7k1bOfZTY6a9G07JPt7qG6gWLXrvGiSs
	 WhEltru+eS9UDe+k87ZoQImm9hC0taKL5Gl4nCcgXtVEbwiPMeSLfaJbkedDUR99ry
	 XnDAB2zn0Fl98GWCfo07ygpq5AJSdmG2KBluP4jjXA496xeQ+8pXawbt9eGzaQzAFW
	 ZloA/L3VhddOFtv9ArqdtymxL4FiuvJuDccQAKWYg5QPV6VX8EBx2W42BC6EHIAIZn
	 HytVgZqBquOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564C7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584245333.7309.11994181256880430442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bee1d6a5a9695e536c2486892776aad4e66d9a05cf99bd9c0e60283528a24d
Date: Sat, 15 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665842453
