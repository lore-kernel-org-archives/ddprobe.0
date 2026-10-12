Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C59D4A9D66
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791821434; cv=none; b=Y90JHfQeGXKqixFQAYXMfbid5W2JWxEpdRTsYLnsrHZFNaVWe6dcOVB2T9VDBCphcy3J2lSLofiWQgpAuIu6sHNoEVliYldNzQFCe1QiaF3FjqtcbJSHmyS8pNvpVHTrHFhOXBsu6Od1DSFkhQ32zHuFJ2ZPFEJoy6pxwzlyuGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791821434; c=relaxed/simple;
	bh=4FF6EFsF/bQVcCAAPPIc1D4g3ylGQWwnAhKELFBxgXQ=;
	h=To:Subject:From:Message-Id:Date; b=AsQFYOv0H1dnKNCwjCGiJZ40jGtaB/1at65jQ/k5tbpNNeItEm2gPYL6Ko5RPTuqGDxlNh7pZ8NfhouMIHAtZ6DnKIJUCN0mBJgcKJai+cJCFoDVWuM/eHSeUFlznFOT5xIEzRprq+aII6h78/dh8SB5JUDDM4mYy3r2rBP1ADI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUMXmVbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUMXmVbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DFAC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791821433;
	bh=4FF6EFsF/bQVcCAAPPIc1D4g3ylGQWwnAhKELFBxgXQ=;
	h=To:Subject:From:Date:From;
	b=cUMXmVbzm6CH//gWyoI+s668mt8kgR7cQYq+72RMC23FEIkMSCd7O9VZP6glzMjgp
	 13w03btIyPNOPWD6HdZarSIvSVVB2/vkMrCCZd7CDJ6CvGlLoenJKwNubV5znm2bix
	 bHS7R7ftRFWkpA+HgWYMM4eqgmJdifeoSD9RjtMjUCKkHhGbTErkFWx4WHvjfwnVjI
	 +/uE7gfG8GdSehvrofwx7HXy1513cFtcHPVkXSYejEhSC1IwVuCTIlJIFIbkmJB3yi
	 vX2LO9rPncf+RX6ia1kNWyDJywNTOv08KcMKBaiHNOea6uvkMVqfnWCE6oIq8DgUDx
	 NEjJjjfydyE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB82CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182143369.21128.6630085326397640736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d614760a67a81499daedbe014d7dab7fd38e48bf483b9e455e97407d96468262
Date: Mon, 12 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791821433
