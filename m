Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20477259CA8
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746200994; cv=none; b=Gd30ep3X54qkCUByFhcC4U1N4Rbm6ZsscSOW7ViD1u+yHbnAKRJFuni+d8AS+fHjrN+4wjhu4K9fSMX6Z+rkoI6aQvsrOKZN4eNsx1kB1fP2ebN8bHqIgkGaAzluGuTn5DfnGqu90IBhgpXcAM/ZfwOaQ/dSETGgJsqETN9Hgtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746200994; c=relaxed/simple;
	bh=zfczb0UXGE5llNjWDiORuMfRP80IMpTeYNltWL6HT7M=;
	h=To:Subject:From:Message-Id:Date; b=gI0yyDmBh4Xz+XPBt3/tv0YjGqgtpxD7i5jXPYTwu2csHS388nTLjFsu125Qm6QttkM92xQJiAO/bjAXF1IeyDfAaft6nXQuAm8KEtw+FXtVEXp94lOup3pxocp108fg3I9NkrGCd5kgsj5Iaq54Qu9DRnkYuU5DqwRI8DnWGe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmQlt8gf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmQlt8gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE5BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746200993;
	bh=zfczb0UXGE5llNjWDiORuMfRP80IMpTeYNltWL6HT7M=;
	h=To:Subject:From:Date:From;
	b=TmQlt8gfiWSJgF/C+QHSUg5iGKUS2ueORDfdqINqEMEp5XZxhI6pG2BcSyM6JSaZg
	 5oWLiUl/Ky67hN3nfafxmrGreEAi1hofKeCZyPEGW3BjmGgEMYO2fgfBlEeH86J2Ze
	 5LCwPQ8l50w6znLhpyM9usY9rECzex7HgyIrIKpF29tpxiD26YHMh6AjZvvuAQIs81
	 9sfS3UeXwHYomuxooxN115mrKlpkCr52Wn9yAFNg+YTpkfjQZqpAMX4O3aSkXPpBjZ
	 fmeX9CxQwCQyWAYtdAqENUG4d3UDboraM2m/Xm4xWxwsnAzc+FnPrDWEX4Qreidwpj
	 Mp67yYfvLGewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6DC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620099357.8762.15383085643535884093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31fc77cf353802f17642106beb2b329f2ffaeca0f1f2bf132bd3fc0dbd43c53
Date: Fri, 02 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746200993
