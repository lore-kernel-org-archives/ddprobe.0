Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5346D25B099
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784092714; cv=none; b=a8DE0MX2IYGx2NAPihJv2K9KX2i4oWtAZeuWr62Ye7Yp5WbTyFILyZuwhPNJatC1J3kPq9q8Ck25dCFb3k+dtwFwYvx135R8M+f7YhJpzvupxHXqGLG+1SDi8vuNCPuqdvvuJszE/lZQduPAQov9NwWg/TA0X8LILfDe06++Gsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784092714; c=relaxed/simple;
	bh=x5E+SqsxiPTTqXAa8qgfjYC8WcMw1cqqgcR8RDNxj/U=;
	h=To:Subject:From:Message-Id:Date; b=WPaye8MPPqAy1W/xLDCtsYJ9sBAz8zhH+wsqKU8DtgkLbhJWvQWaHKk11IZms73Td5RcVt1HMT8T1au3KgVuxDXGTSe/8KFBrQMD2cZjtjUrTKmdhtgN7+pwz1Kl5Df/BQRf1fiOqXgOPqeKMNU7p4RjmYc2sbpJZLzxXeh2JHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJbGvHwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJbGvHwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AB3C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784092713;
	bh=x5E+SqsxiPTTqXAa8qgfjYC8WcMw1cqqgcR8RDNxj/U=;
	h=To:Subject:From:Date:From;
	b=oJbGvHwn0itL0sjnHDdqcjRDsgmQSnl1PWGp9pcWv1ir67Lq85J8YlhET4i+ancew
	 UexNitEyYSxhhkgyZWLPq62c4yTf/1+tvqM3aoexKnegA7o82Oc6IBKMqzpjyQPqFq
	 TfGuZzqsAIgq3CAJe7cdJJQ3Ft933MUJJkFOuQhchhYvEsZwFVF6jJcjTHTWTkTt5i
	 rpm124YJigoT/jiV1uVL9CnU+8Tcg+fN/8mL2We8md11jZZOrP+olFtxy3FEXq0SDx
	 Y4e8+sCR4M2vDWz6ldfUU/cBHD1QZQx6fXmTAL4QKjkQKUulOEBAbrA4l3YSaYsdHL
	 bxmAdE15S0FPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE07C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409271370.27238.66858834390796459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e082b6258fb114c9487225c7c9af8aa3d23cb2da1ea249cb6372d38c42695c
Date: Wed, 15 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784092713
