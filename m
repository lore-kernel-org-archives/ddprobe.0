Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3365229AF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727748954; cv=none; b=VQl7g5v0JKCbRq4ym4pvKvPu6TsnI+8wHjGppwQIKnwYdHRPZjP/DuD29FTml624UQ4CJCtWJ3OQeZOTNep2C6z0bm9RcQziNtySZg9L4csujbpfD4WjzCNebxXBgPiGZUNCZqLk63AomRszVzh2lHczduGHlzjHKECuEkEeipY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727748954; c=relaxed/simple;
	bh=L8oPRFMFAi1s2tqhDxB+mdEV7yLntsg+tBwe0za5hUQ=;
	h=To:Subject:From:Message-Id:Date; b=sdjsZFzOQH1IRSFfXKWaGWe9VZFv4Mfzy4fRxY1jtqgKOA8xWiNVtZ8WtEtOvzdUs8pRydLKkEvPWUojjJO+eggrGWfceQi+o1xVqwFrb5jr00udbYsRyjaKoyaxzMWmg3MLdpPcA/WwavzM4aJjbs4xsmxpi+78aqvY+Sivpzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUFVlQEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUFVlQEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5C0C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727748953;
	bh=L8oPRFMFAi1s2tqhDxB+mdEV7yLntsg+tBwe0za5hUQ=;
	h=To:Subject:From:Date:From;
	b=UUFVlQEeGHqgjd38L6CX72cpOE2OkCLICzZDbqJ/j4uNVC/J2o5z0LtgtAFeABSCN
	 qVfLbqLFzILaDtEXuH/tIp8ubcZRITXFJCsMtqm8AKKb4xPewMZ338G+RSQsRDzXlc
	 ctCqhQAFGRlBRThQSDEzls+8WPUsHOBEEX6WhbLhtCoaH4oCUSaZ7BpYB5h7LGnLoJ
	 I9zFpoJwnPtghs46zxp4jXiD4bANDKqzQHnXztPSW2tffwnaV8qlw5BcDqhRyYVB6U
	 FxJf1hlrIW7+Bfan1YdqOELlXzYM24WYRwtMekjr8JPKC0ardP9DaBuOUakEmyCYOJ
	 cbRist/XO61vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B9ACEB2DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774895367.21051.5926554850242854006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197643ecbdbd1b1b02cd15fc65663c14078fb453a9839d253b4198129058bbca
Date: Tue, 01 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727748953
