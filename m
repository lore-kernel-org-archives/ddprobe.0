Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2013D1F152D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758304794; cv=none; b=l34fneBbApnUqy4J+Jf/zbeIXOnfNB+rPYk+n7DOIHpJCDM2h4UJbMwp/W3M29HdyUmuSY5KkMqu+aY8EARsj2ajk/kd+nS9TeaiJTb+ATGH+u3JfIUlQeqCd9Su1X25QgGZn/V54asHdxlnTk/Fn1RV5zJXIatpUX5hifm9D8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758304794; c=relaxed/simple;
	bh=8TrUxms/d1zwj/07h4y7sJxtVihe1DrIRxkptMzuI4s=;
	h=To:Subject:From:Message-Id:Date; b=ZpfbWgglDxXhn7CtleYl1y1jtlJHpo1HjlJ5svCwGQfB2nMi/vmLZewcjkPW21TgCl2O9lP9rWM9GBJGt6CRHAiijlCmbc8zhHCY7cUrlYRXpDJatYcfbGcLlO/gHpSVOxwRntfXkXqvvHjf+eVSLxx/YEBFR+xtaueC+1hroN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4e5JkCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4e5JkCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C94C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758304793;
	bh=8TrUxms/d1zwj/07h4y7sJxtVihe1DrIRxkptMzuI4s=;
	h=To:Subject:From:Date:From;
	b=A4e5JkCIKZCT9ZC3DFewJ2L0L2vIdDz6wBAf6/Tzx0U67FxPK12jL5ynmY1y6PKk6
	 ulf+YT0GBVmLaDDg58I8o+dj95U/4YcSF6bO6e4SWEf437SGWyP6gzcNSCiyzWTZlo
	 sKZsnVQTumgg+75ytFufqYnhPlAqvdgPtwp/ideSnfBOBkPxu9n8XFAlhP9VjF5fMG
	 32zZAxCPfcASBJI0abL5Jd0ka6UARGMk7yKU7MwRYd1vap2XKK30N2XKvXp//KhLsn
	 PEF4j0sm02yMKtAQYRQdlUEdYauDtvS1VVIZ4t5LqAUjQphPleCn4y2YAbkfjZMFj8
	 Of+p8Tm8x07xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B68CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830479359.1684.2901390979808177766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cafb1171206d717bce776eb16c4cc2353911b0add3db7f66aa3cd207ae002cd
Date: Fri, 19 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758304793
