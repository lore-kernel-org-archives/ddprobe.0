Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0622A2116F4
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774622094; cv=none; b=acRhl9KFneod5jWqydLjiGX0gUBWQ00xOAgmwsEg9Va6R3054kO3Zakq6OIGI68JIdG1PNw4im46v2DtQ5tGa/ipbmlPvozqmhpV2/nwNjpMqy3k4SKWFyOQ5jfCSk0k8PMokRplBToXNe9FsOUCAIgiB8hbhP8B83yyFNMJIoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774622094; c=relaxed/simple;
	bh=BeC77nNULbubDtA+uMz6odUagYcT7VSf3eLF3+Lj5c0=;
	h=To:Subject:From:Message-Id:Date; b=IUUJt9mYqz537dP3sAjlT7cRdlZqIUhTQ6a041Uv1La52L1FdiX0qTzw2RPrLM3PGEL4SOW4GH717D5Gnp3IwS3fBK4Zb6F2HWSb6+ricebN6jHZ77m+gsRCoYAnydh0VpM+bdV2d+0LxNupTyuYfqawrblmFKKqdyXx71HJCGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1hiU1Zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1hiU1Zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D26C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774622093;
	bh=BeC77nNULbubDtA+uMz6odUagYcT7VSf3eLF3+Lj5c0=;
	h=To:Subject:From:Date:From;
	b=L1hiU1Zk1UH3FRVcSoClfKPNLUjFuiPI9QnTeEJJkdOIyKYKlf3T4rHDYyxrF75zm
	 VIUKjdqxGWVIFl5LeviAJRCO3yTQBPXqXsWrJjcbNKcUufPD8oLUP2KRJJbybFGVvH
	 ML/Pe/tqdwXpy29vfJbSXrbelY9gL6QLHOP1jYOfkneWGfARuJd67FegLxwf2pa6HO
	 oS3wENGXZqqNiZ8jgHBNgw5HdIUATMNpNnxKPfXiYPGYJPG/CgSZ1EZVV+4JGEPdrh
	 LiEymB2WPZguk4n0CWSZlyXcRdLYiix38bVUcCmufGWq8yGz9YgCBb9TiQ2TnEk8uL
	 m48z6iFjqfHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244410ED67F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462209358.9621.8118513546192342319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7299356fcde52013680aa38c3ea6e00146496bc9a5069101ea119963b91ef2ad
Date: Fri, 27 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774622093
