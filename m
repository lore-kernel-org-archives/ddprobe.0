Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAED78F3A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783976914; cv=none; b=EwmsUQQ5Ti9JYuCOLAizaKLX8C1spJ8OwlLgN44Wx9fSAAz6m+wUJ2gxmFnFYqIUy7bO+b8do9ttAYaR0jezEyN63g2yywbsT/M36DGdkBsHREA3a5sD+VFDwkyheqH7ZUj4S9Acp75XCXrnf94sUBvlYh+S9aGfpAgNZkl2xMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783976914; c=relaxed/simple;
	bh=I2tZiiEqZpLBK9yqydQV/tmFclbEYQsIdba/bpW9qb0=;
	h=To:Subject:From:Message-Id:Date; b=YcvDWw1c14GEj/j1xKCgp6Y/ksSGbtpifQ9ys1BIOO1VOzkI43/oPesvfCp2pencerCxokBCBCVqqgPeLwdVBDAKp/65nUnlwlHcAGXg3KCJ6c8cIHmZFhqXaTGcrx3GZfQxJc13bjoqW42zVQN35rVWlf8uT2Kfgthwn22T4Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYmqEJBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYmqEJBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBBAC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783976913;
	bh=I2tZiiEqZpLBK9yqydQV/tmFclbEYQsIdba/bpW9qb0=;
	h=To:Subject:From:Date:From;
	b=AYmqEJBsHHm49N9Jegz5uMiURaN8sP+5Jlz7aaJjxUTugYUvLL8lB/Ah/4QIhdvEn
	 LBGAQx3eEfNliOb2WzaRJz0zyupmj/mDLxQ+Nc+flBPIu3j2yWPPF6BV36JH22sI1a
	 ysFK+RV6JSJN7xIs0ORXMZBmL4PH2YZlEU4enDnpwjpP+/r6fr3jhgM1+ou+8Lqjdo
	 JAl2VjZF+BXCS5bdQL2VfRL6ZjtugniAsZ5VUXXN8hOnoeJ2Rm4huSurWRFRs/9GiV
	 jpFSo6gLK8YQYK8IA+ZIPaCffibinNz6MF2tpIxkNt4/l91tCe/i7bk9bC9YpbInUN
	 tpYIqo40vQedg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0ADC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397691369.27066.7834107826931349125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720f91750fd1a6907f2b39b52302f1850585e8a9bbd39edee1dee2df1fd20035
Date: Mon, 13 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783976913
