Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460441B0437
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743028194; cv=none; b=ouBwW5dIBHhYmLIQBL+5/yc2wLkhVyuIe/zqy2AuN+FuVz6HgAW7V3vo+1gZ35m+Go6cZ/0yM6yIdqjdoVhrvT6Rxkxjqc86XmgOKCs3xPN5jz940vhQ3jVeO6jptoJNMK4LKQu8ehkRhdLFSRKgSAR5oVShi9w3U5mwTpVNXws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743028194; c=relaxed/simple;
	bh=qjU/o5Ki0lYrR1QtjUKT8WbBy+nVnCXdwmdv/RhuGQo=;
	h=To:Subject:From:Message-Id:Date; b=hThpXiVvLiCxxSuB7yOF6LOmZdjL5TjHLAk6WRnMIXHy0VzW9TElW66zLyF7OS2j2BJMtL+cqOWdA2WrGUB73eW3ebhQBfBNg9T0Ox7P9VHyF1Nc+Q3XKHfUfpiBtmnumr4qnvdVRtIFPmDOBtA108GHTTGMKYHdX8D2Q3m/CN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0fZnMh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0fZnMh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D9FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743028193;
	bh=qjU/o5Ki0lYrR1QtjUKT8WbBy+nVnCXdwmdv/RhuGQo=;
	h=To:Subject:From:Date:From;
	b=s0fZnMh+3iXeAEmkK5k+bFnbNiwhXYHPoFzAdEjf6lHNznWu6WEIvqwQ4E6He4/BZ
	 TRd27G/7wvsNU5pbbhW8IuQvh1IzsqopwdwLI/9HrrnjiWkftwW16fIcKD4RBpfCOa
	 6GfMe2jkxXKNp/KOhme36sOdVaron7byPHf7rIyD93p2fmpQkO1UHoFJseR+aEkn+y
	 SxewgaCx6ggBmq4lYtQCOAHMFUigsQv8puORWrKsQG/x4GoBht8c2zz3MRjZ9Fe35U
	 I1/eNCAKaSqUvXzNQQwkIpYhZ4X9IzSWzhY6qC6WFzkKcYXxVznft0Ouk+kY7lj1mx
	 ft2bIzpaSWFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3E2C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302819367.20990.16959509688161557808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4e08a00accdc500b08bf087977b97cb63f42a53af4120322967869cb4fc445
Date: Wed, 26 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743028193
