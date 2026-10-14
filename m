Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601022EDD78
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791954634; cv=none; b=prwQH92XLMgDTl1O0KjvfRNr99rdmxSjSEs0mWSw1vDMqVmLq9N/HbrVijUlYptk5gacMmQv7CIFejEgVHU3ZYUNSn0SWNrlM4LNPj8/Qxg7PkVGhurKYdZoVzOn3ju5Z8SX/XGGBGiwcIQw2VuIQfKizAK0Epw9m2FDVR4zCac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791954634; c=relaxed/simple;
	bh=jp7eRDke3gP8JCRLyq+Ep/lMjD48efDVi6aX26GvOVU=;
	h=To:Subject:From:Message-Id:Date; b=E+tLcgVyFeiG+a/E7Hab8p4m/0xnWdBEg2SnAZc16dW80BA5rYfWkGztMDjjwD1H1w5DAlGszj3tObyDdApo4rt4gObt846/iLEp0aXRW27aT3y2z1E/+vfhXK81qE1ArMv26fKIe1b97j/xnIuMG1yiNpPZjwA6DAP5SXiPEgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTNOuqhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTNOuqhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82CBC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791954633;
	bh=jp7eRDke3gP8JCRLyq+Ep/lMjD48efDVi6aX26GvOVU=;
	h=To:Subject:From:Date:From;
	b=PTNOuqhQQm9hDWG4Hqn/YM7mFV5b3hTedGMf597bNfnclwvb+OsrV/1phXin5b9eW
	 AIWBMKG5+MGzKbCXXlnznat1oMZ8ViTdcC1YgTGKyfAx+2SMvQnFUpYd/2cM/t3B5N
	 Jcy+Gg4hnFlgSmhvtVrabE22nqc23OvkDigFlEEe3BAXhCHQWFW3qT+cL0d7Ctbo2A
	 YOkC9yO2WHYjeyHpI82wzqGHko7GOyMr+eOjmCi78Jwqe5mAaGB9HWhzOyDpotot9X
	 NoKkxhkXqsmZu65B9qOdAWIeQmee/Cd3iy/rlcMzctupQ4mxWJIJX4a1K0OYIzweNX
	 pV+DlrymXafTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35A8CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195463370.11918.11406470325484174038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fa98ecf78bb6ee570060f1965095ab020ecf6370011fca1869946e2be15713
Date: Wed, 14 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791954633
