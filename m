Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5744052D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787290834; cv=none; b=hEvCk8wh+T+yAxVILIldT36SYXc5JLcnhGh0W+zswJpQmmvSpKKjGQxxmekNRujmjlpXfWDa1Vu3QTzaA/diyWZMcbydjg36iwk0gfGeGR2xtPaLW2VyAvaQ0ltl6poR53AhA68w2Phn3m5+QO3Ft7rPqP2kP0LH0tbYLWXa5Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787290834; c=relaxed/simple;
	bh=CJpHBIwb9Y+fDYXwll1NhTyVNKyjoWC8pnajI3Zi6iU=;
	h=To:Subject:From:Message-Id:Date; b=fjYRY722iMOAOVX9Ixv2kQecuw0VrQ0BmmDl6BxJsRCRkUYNbY2NpVXegIqVSSgjJFxwHmnuZUBDpCHrSWl0j9IXDhh4Z3XuazxGwNWsg0Ut7I+9KjfMN9YjVS6ackfEkfakIYmKQ91q4FBtdvVfaGWnndc4xHk71xbHA57e34o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRNSi19K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRNSi19K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6005C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787290833;
	bh=CJpHBIwb9Y+fDYXwll1NhTyVNKyjoWC8pnajI3Zi6iU=;
	h=To:Subject:From:Date:From;
	b=MRNSi19KFKYjRYmafKqbaJAure3z+QEDNzONbRgUFZCmaIbCoEErB7rvWnhJ0Im3p
	 YRVt4TCLWCESWN+5AeU0rjVAN7q3q8av/y0ybSK2aQ7QYqQKLsr8ACdaH77+afdSbT
	 OBiryxUNNjNisiWMDZHkHw6x3p/MkMH+JLzdyg/j4PDHLO24X6LDVKAqLhVumBmzh2
	 VGiwY7YqBfDgdbFqgvXwngPJpUv6a8czX6TFv3R7i78zA3LXmJ/+jhYckvuji4c5IG
	 9S9h2Uuy+KFs1M9T9TjdexZhsj9FQFWSfnUAKGVANypgzet4eFpFtLpG1Oxwm0CexE
	 uVOQ5wIorAW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0995C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729083371.16910.4838459285509083971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31302a092fde87e1884d8d6dc8bb58881fe58ee868268922ddaed0d9904bb48c
Date: Fri, 21 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787290833
