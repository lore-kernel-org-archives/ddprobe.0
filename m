Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87F0266560
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751408393; cv=none; b=JoINPSkLA0WYd+BcRDH3runbRBuQuneusaDoCzBztFZCO+Q+cSXPU4LHPQ451GxRUPY204llXBKxXtcjGaF4CAnBvzoOXilJJN5ZrTZZBDp/k2AYCgJKBwrWCV3e8/iP8gqlKKYk1hEH9aaO9eM9vIzDuOaZkVbwN4q3Y7C7kg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751408393; c=relaxed/simple;
	bh=NMLlDpkRULFerLXszpGbZAC7xy4r/8j6qp4cBjk44v8=;
	h=To:Subject:From:Message-Id:Date; b=YZnUpuC1HcZ7QNMjPFx/hThPH0mzgbSEVsRtu8aLf3f8m1fidLBZWQ2Jcl73tRMdfRLbgG0630D5s6N9M4uco0KneT/AnILLM9s7GKNYfv4XtHJnZaVf6Bg8EQpgykKJyIpWjBZCtofKLALkqh/eTqjzDe8zQgLeTmMGnrBzlMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jlz6U4oD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jlz6U4oD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D929C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751408393;
	bh=NMLlDpkRULFerLXszpGbZAC7xy4r/8j6qp4cBjk44v8=;
	h=To:Subject:From:Date:From;
	b=Jlz6U4oD0/LLls2MyaRNMZLmB6w0YfjH4G9RDhlC6vzXyN0KnLPFshbVErCRKVuCV
	 w3xWUn8gGCBhiyzu5fxnf1OcopkRHp50nS6eq5fbRnYuxHV5WjfZ3KK4hhcmDeP0Fo
	 qirE9bzkvHoKgzFlPDRra2ufhwyAT/soaP8AYNQ/rhGCuTKdIW5tdY46euv5LCLmgm
	 kjqYGjfigvnSF777+yXduGufdkASmYQJ7vFzPn35AGOYevprl5IQ5cj09Q1t++03ea
	 VOcEGxkGO6byiG9HGXnDhlLaLgLxxl0RfqvhD1VQepT4NNO/RscBcTAUmaSNiXkbfn
	 Un5tjmPSoudCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FEC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140839357.9011.18181845816927268781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3402734984c95cacdb19b4210d47f0b371d071af2e048b19abd4bb47826f51
Date: Tue, 01 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751408393
