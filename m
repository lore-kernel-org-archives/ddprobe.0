Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A28044239D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786048834; cv=none; b=ZcmMY40qPlk8aQesLAdkrWmUJHn1eV31LilvPbi1qeBB2GdDs1cUZUqrfB3Q3iSHFLjHayZgqV9KApMVtCGOGC/T3vE3cSMVgPNjMVV0PPVpC+YVOgg5aeXnvoJfuLNMwi8d0NLYtki00LDTbbQtdLwDFe2qMaEUTv3Sk+SVtMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786048834; c=relaxed/simple;
	bh=Vig7AY/GdsAuuxel1a+tjxFJKrJZxb59RyG5OPp5wPI=;
	h=To:Subject:From:Message-Id:Date; b=a5YQ+wdtAYzO6wqRgxVsFOUhjF3CXBK/geUaoXdiKc9GddmzLPOf9K7qaGBmWyw09iLHmYPByCs6p+lZgUpvVOz8PUx18q3zN+5Ok5WKQB2e9AlWfLaoOEYzfLRVqsoWwUj9qPQAGjOA0Ru17Q22DaszuwZVYFfZngurI9qA0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbrrBGTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbrrBGTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3948C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786048833;
	bh=Vig7AY/GdsAuuxel1a+tjxFJKrJZxb59RyG5OPp5wPI=;
	h=To:Subject:From:Date:From;
	b=CbrrBGTFB1VtJnZaWMsCY+5j9+hvSOhyct+KScUyKcqlpIhgSpQPdP8/Mm1X9VM0b
	 8haw1NowDJCXarum/DW6yCW5wLZz+kUMHl+rqznNfj2eJsZGK6+/I/2QPTVIhuAXJh
	 qUec5hLJq68waEHNjHCEkXNyLR/uKb4btmjXdu4dzVr9Yz6CosLzq1xkU9Orw5o0wG
	 dCYVIVIohNcVBKgGa6EnM+NPeFs7y4RCP4239k+Zd1USkiibk3Ysep8QLpv7f/p5Sj
	 CTsK2PU2ztDJg1GgEY/Lcfdg2s8IxiOshgaa5mt7V0c6gjvDnmjvkOuG+7mYWimPNR
	 0pMI1UXlA22cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43BC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604883368.16004.6276899074919094897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1422d2f9f50e7e5667cd2d7632d29d8b779e5d7d388f870f4a9957f0170e5650
Date: Thu, 06 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786048833
