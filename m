Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563B340D57C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781916394; cv=none; b=Jhncu0MVPvi81y3MsKqNz2ub9eKW9ZBuexUYzUsx61avV62J4IfAgndtEFi8BVybRXW/TYkNQAQN6sjCKrFzWFfunXleo1Ig3eIUPn9r95RJdOYzFj5bik15HulCImHKY/dSxvgP4B510bMIl9BOdQ8LCrhdkeorTGgU8+Eu+A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781916394; c=relaxed/simple;
	bh=0IBfVLtBFrum4rr4cmlwBU7m94Vy5f9Y+N3B2EpNNFo=;
	h=To:Subject:From:Message-Id:Date; b=S4pcvXawSIqln+9N2yy3RblCcj+RhuJN9vJXqtldgjzvyZB95I30DzQrWBLhTWzJFAOp/6gIWRx9KowTaLkeQZczGW0wJyENrj9NSAaM4B0ZEKABHezdWS/9h7lNRyncMF1lNQYAbzxatTUawq8YqXEVHY7xEtDgthZGQ607VoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iebam7JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iebam7JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F1EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781916393;
	bh=0IBfVLtBFrum4rr4cmlwBU7m94Vy5f9Y+N3B2EpNNFo=;
	h=To:Subject:From:Date:From;
	b=Iebam7JFKcQEMTqC4sByu9vFTZzTDASUk7VqP9uOTkpJlH5+keDo4BQf0eec6+5CJ
	 7nSAUspQSgjIHbg19ZsRsbABh0bRR+JtFhQ8gbu1U3/tzbA/ATZ99Bz+nt7QbWZnF8
	 8VS9CdEQRaQouut7ChrtzDQzTcp103BV3JxIlf5XJC3KNKxzpznUCF/PLc5uiJGZIi
	 7pMJYdmuhpWIT1RimuqkIGUdXa1seo/XoYApDmJrIh8GURUEz0hOtyXOKCELNbpVUp
	 wHdBC6rVvWqGshvmhDf5WpMGZ8Qk6QUx9XcxYjrAnief54Un0Rd15mZgYvyUuSsQpg
	 Z9+bvtaFsKFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9E1CD98FA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191639373.9316.649213150550431669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff8252bb03e61ebffc7d319a58e03a81f8bccbc5e521cc5024a9b850081bcc5
Date: Sat, 20 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781916393
