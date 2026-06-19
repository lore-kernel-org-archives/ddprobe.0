Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FCE32E73E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781909794; cv=none; b=kCOJuGyeZCsUCNf6NGXSRLmeCMc0Op2ziQNCzfegCoSl3CB6bd2ZPdwguRvHV51mVEqd+/fWjUQ7wYuOu/4i2h4ZbRD5i1hfuwsT19zSW+SbYYB6vhqOO/jYHaMsA47CRXISZKctaXHvQLpzUDLk5nkgyeguHCQeq9vB9SPJRjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781909794; c=relaxed/simple;
	bh=/kuifNMMi2mlWGCFMmMhTr1bZnUQZekuPk95X6VKWrs=;
	h=To:Subject:From:Message-Id:Date; b=MRPwZMrjwnpykeScWLKl5Lx7JBXZJnpTFfbvIqrb+eXbS0clpvlHMWK2TqeX3LdI0B5u1lmCnIbAwa7ZEnl1H6dDgH3J69UhWFyWcN88abMy5as/HU3oOOrqyMr70j9LRIMGnyim8UGxWl/9f0VnQKjaGYh7IL3jxHF9Kba8D6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrIaIgt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrIaIgt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA44C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781909793;
	bh=/kuifNMMi2mlWGCFMmMhTr1bZnUQZekuPk95X6VKWrs=;
	h=To:Subject:From:Date:From;
	b=HrIaIgt/2rZKR7KLP6lsr1Y50p5xpiG7a2oeJMnKCvmMOHDbCw0kY2ZcRf3U/JbYL
	 tv9QQSdQNyeInnY8tVp3bs4ltLh8pUkoymuA1PfNF4o6ZWEyRnI0IbYpYX6iBltHDS
	 8FG+ZWccSl7zIZxVNiin6i3rhTgTYCdXgPDTcVeHv7TbLwvI5kM9XdNujOBLh3MoCP
	 5KgPfTK/eUgxByIl+YdugiI3UGUZGxLyGy7U81rallwsoJ6vlhWJxyXqpr+XtNewbS
	 +ZaxMRBcclIsU1Xa/bacf6Z/HF1Jrr4ceZbv2amYbfOjyIKqZgv/awxP3cny6bEzef
	 jd4XQ+FOIqdiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAB6CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190979373.29115.13313837724183438263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd2622dbe1e99081600c5b830e5054fadd77010cf5f242b7b4e5fa729e0d117
Date: Fri, 19 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781909793
