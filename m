Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0C5226D1E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748885393; cv=none; b=WPAQCd/8ydQC+13DnAnU/Yf+Nm0beiCs+MsU/Zo5KAtHSXj6B2ZOc43RcfEpkrFmcjv7T6NqgN4YzjUoG+nBurFOUD6oZP+GFSG8gSBMrXG7vG0fSmANhB7SiVmQIrTmIudlFLydbCh/FQ6qCwUSgSOtqcwHbbZAlkrhVSKvNfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748885393; c=relaxed/simple;
	bh=E55D8FXOGY1SHcLmct6boeZCML9brEmIzmJkm5zAx+Q=;
	h=To:Subject:From:Message-Id:Date; b=njQmmT3G/DcwRkbH7rQkb0KdoDx8Fy9qwCDr5YJpKMmf6DHgB8DcGG7Jzy4zyOQrM3O1XAbLHvGTHT+AqrJDIKIaKnHW051SK76adR356fgJlKWbDNOH3lodRcXS5yN3mMxj4XesISVfT8zj0SfLrQEAbjgZ8UWvMjVa8XFG58w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YS7U8rSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YS7U8rSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF55C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748885393;
	bh=E55D8FXOGY1SHcLmct6boeZCML9brEmIzmJkm5zAx+Q=;
	h=To:Subject:From:Date:From;
	b=YS7U8rSA51W1hUR5pf3Bm4mIHKz1wYluf48wthZubLRctjnVn9olUte9UteRBVgR+
	 b3a01UMObNhffQPepeUr9eINIqcQGN4jMigVejVGN7/nXmjvFA7pV58hRSZ7U0jRCX
	 gINIDczvEG2Id3jNG9Di6JvuYCFwk/P+H/Dk0UO0g3n3YW92jnpFeQ2FWH+c/TUbJE
	 HxDLB2RVfhOjvcwLx0bFFR73gjOKT6uqpKuC97ksMgvpBPWNd0gpw+bSm7xFd/jJ1n
	 dqwtXNsrL+ypNeU8xnqvgEWhbcz2T7xixQOeuVriPebb6zWJlWW9104+0PnxQv/dmF
	 hoCAZWlkDGKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94969C5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888539359.2374.17156267780615666938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69275638c0686503f95cd428746329bece1fe23df46aaa23abd274a4c97ae786
Date: Mon, 02 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748885393
