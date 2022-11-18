Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25E029A1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70939C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668773454;
	bh=SCgj2O8d9YXKGiJQG4gSm/xGpr4hxU5qu8TIfVrUYSY=;
	h=To:Subject:From:Date:From;
	b=GstGoRdnanxM2IYe8T6bffjzYH54LsQpaIc4GPR21ncMC3f5HDI/0ZAW6LLJvKXKh
	 +E9DujBd87tFSQVXhU2b18tkf0pBaAWlPyC96CIVS6tZJtBxSnp/UAek6MjJkuqlt1
	 XeQ02wQz38C2YwS591nSyNHR2ArQn/273zhgp7QpAHfMUq3yT9Wjlx5hkhG9zuXtR5
	 BMBgCoipYf79VbQEMAxQouPIg4qm7UU/8UrDmgufH8IldrSP8Ul2AG9W0/tkfCrOqC
	 HoV5KS7hbD3T0GDUmbLs9kKGGPfClFBOyBjYca7ZA9gNeVTM3ZodTsh2W2PT4KkLi6
	 nn2tR44c7/zQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52845C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877345433.27240.13913851935713450427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51395b35d37eb59aaa0f0cfa74279cbdd2a87f395b090ec476fc1cc5fd7111cf
Date: Fri, 18 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668773454
