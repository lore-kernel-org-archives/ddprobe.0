Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B98413791
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788340834; cv=none; b=FobxuY8s2beSRuFK26gOyQep/DDmRtehLm9eJ+0tJwjgAduxHn4Zi/4wQj5e0Oz5S5xZRfO7xYkW+CWd8NhW+2NQG1snZAhThNvj5sgQG5fDyGjdLHxW6jzaSVNK6LpUuo1AvN/ztWVbroLTvOJNHLG2jLcmI3nIcKuh/jwnpWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788340834; c=relaxed/simple;
	bh=naBneFDNt/P1g/9nLUSqhFu2xXSwHgrZW84N+bXPHlY=;
	h=To:Subject:From:Message-Id:Date; b=e06DmKoetaRvbD52U54mP1bQikNxS5DggZa1EkNKJ9iDiQf6ksv5n7JG0tlfGe3iywdLqq1SQjpqneGkIWN7JPwDwDtfWFUMbcy2U1uy3gKwKf+TRb20N3JbmdvnLuEc9TG8x11iS/2AuZtvEGjgv64SctKUeYgMwZ0FCF9AAjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxuD/OqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxuD/OqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD478C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788340833;
	bh=naBneFDNt/P1g/9nLUSqhFu2xXSwHgrZW84N+bXPHlY=;
	h=To:Subject:From:Date:From;
	b=oxuD/OqGgNcjojX/bjJ+YcpEJvC8Myxhz0xl4PDVYjQ+VnV5CtzsJD2MCOSVXo7x9
	 pO3naGNRfI0nH+pX6hk8BOM0fJHS30bwnQLO1OPjcP01PojEHdBJcjyy4LHQnW/tDa
	 CAmX5pT6+p1e1Jl+U9QUe9ueY5KpnmiZPFJNvzJ1YVpi2Ha0nPutLjnPQGGzkEi2ob
	 6tg6TfCr/io2c3G3Wy8HOxX7HDHWdHFzDEQ+rRBugTjWKzZ3sSp5mkd+x87levDdmv
	 +XBswP25dCtlJzPHBPVkrQMZFHEfp9x0WZypD6Tz3X/Ikh99z5fDXi72wm0Z8p26Ug
	 OG0mOI6iJJX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC7C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834083368.13850.15692923836907859888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fa5e10901ef753bd5d3d012de2a194dfa8034b31810d719ad56888add59f68
Date: Wed, 02 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788340833
