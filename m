Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0DA143723
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737519354; cv=none; b=ZrsovZfgQTXXtCN7vZm0DeQms7gFoXWQUBhMXZigOQvOD/t+P9T5N+3fGUOC5kRmyikbNoqAhfxBwfJO/T+XrAJDN6R6fxmo3JuzEaVpIgxXbq46Ytgz7ZvlKCTLvvDLeKkVW++fHqg1AD150H8xg1cVTvLd/cjUWt8qjUljthc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737519354; c=relaxed/simple;
	bh=1sdsjD7ZBEp3iLS9N7lHC0JbzuXcSJx7RXbuothWM/Y=;
	h=To:Subject:From:Message-Id:Date; b=HAc1I/lX1Tj6SGKL/9dOvtIlgnY65aM8oj9cS7OXWjRB6ndvPtunJn2XD8kK2RFRdgZTTJfaizZmfmStS0CDYw/cX28OsHZbHh7BB/injVtREi52dQYZvluPLecGrM7Aateg3eYAw9QNptj9tBVfPscKLXiiTW1fqXDvUm4Avcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfb/Byfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfb/Byfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A387AC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737519353;
	bh=1sdsjD7ZBEp3iLS9N7lHC0JbzuXcSJx7RXbuothWM/Y=;
	h=To:Subject:From:Date:From;
	b=gfb/Byfh0g1cGMwoU6OJhMtqbDAcYkRG7+0/lpjvjv11mYxEfhrdwbMmMhPUPjf51
	 89+u7R8ZgRgsO7VsO25qSSqMXSlevaDMrayVIMEKqgTloYlBY8UCklgL7boEDjn2qn
	 bX/9t6T/dUe7NgrsXibHYmqDg4TFojBhGljH3oZyOhz+M1lRvU9uleuxHsUE3s3Jy4
	 sZdf5maHFRWWYfwYyo8yMmU5N8zVvQ7HSh4/saKkbEpDTJS0WJ3xx+vwcuGfJH7nd+
	 vJSAXP1sNZXE0ANwsixRr2ldHLfDWbCNKsqc919KoF2Xg3skOMduS3uNbSSTSRkYKA
	 ilFs/zu2xkMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95001C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751935360.16114.16385081847956645507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1579de96010ca71d8ab76bc288c23dbd637b613199cb48b1bcd854c197bba794
Date: Wed, 22 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737519353
