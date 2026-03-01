Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C48317171
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772370294; cv=none; b=cOnAtbhlCWMDSRk1IA0uPTaHkaEEQXe1MBbZWpdf/CbVl8j2kQzGHkbRdOf7yI5SF1o0KJog7i5c2+td42/HFa2zGEp9v+9Ms6serIItWoom/QWj9fXeH1VgQGXM2R7jXWQJWXzlVxwRDq9H4UW1WKB2ccpFRPM5EAQuZdcbjhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772370294; c=relaxed/simple;
	bh=dUYvVQypU/jmNb2S7Ope1tB4WuuQhkGT5xr5wRyN/5c=;
	h=To:Subject:From:Message-Id:Date; b=JMcBsYy9vHjwduLl6kWCVAq8NRqvajScx2yQkW6+u9gDPeBX94ZUn0bRoRSlxw1Yn892wjLDU10MlXELCwwhn9Zr8BDz5ArntR55u1269yvCdmGQSXKRW5YjYcWXr7/CZsOdGG5kHi/v8W/aAn2rtgNeofq8AvyCAZy+KyqlLTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DW7p1hIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DW7p1hIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC3DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772370293;
	bh=dUYvVQypU/jmNb2S7Ope1tB4WuuQhkGT5xr5wRyN/5c=;
	h=To:Subject:From:Date:From;
	b=DW7p1hIlRENUZ1RyohgaqqB1nKPhoqBIl5+V0kP0+kn/iu5RxbqNTdThQn9b72X5g
	 bANzKNI+lybjlADCwWQMkeKv67Tb8yhWU7ejTKy+D9JQ29URLqIquEHwdBNFqnwrAX
	 OVb40ZuabOjSL8z1oRcN8fBES8982MsBtVNhfNxU52gu+i7VJ0Ra1Fotsgt6TulxG5
	 b2Mkh1Don9QfbM1X11EyBIAEFusF8uJmvITCtO13G4HDYxn0DqbNzFfEw6UaaKVBks
	 9FUvBvQhwrhiC9aSeYXYU5MMIds8zjABMAVwtpguj31bwRPFxCyM5WlIV9Pd0BPUmu
	 rYbhj5u1g1BhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F57FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237029363.29650.12829771338023868836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f036b279bf6940728c52abc54809269d1785075916078824fd57d13baa244102
Date: Sun, 01 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772370293
