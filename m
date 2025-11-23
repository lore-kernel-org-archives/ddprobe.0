Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1032A19E7D1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763925114; cv=none; b=JzzOLzF3nw9Q2/PkdwfIzsB7wWo4MTomfVE+axjgvDL2tuu/ZGnuTymlAUZibFtjVHoObQIWm3MOFf8ZtFAW0pDE8hH7HvdLHB0rgCPvgSexYfXi+GEwq8eJbYjEqooZRdzfPG0SQB5zWWtJA5DEavBhg2A4ehgmGeN8rg01mYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763925114; c=relaxed/simple;
	bh=szfRnf6Su8+VtKxgAfMWWR8XJ8pCJxwe2r5kyWAnyQI=;
	h=To:Subject:From:Message-Id:Date; b=JUcykC/zk59nlgQIKLpqk63Npl2w0I2GRvCY1IYwosWEBQobJ2gXl2deQvBD5Pr5uVoeV7sk2ky+cqF8B4nQA7miWjjbfqUvkTvrd2T6MZaXRJ4Ii9RjSOwTzaSDhJUdoNf8/AjBqr8kFolzdmzObuLlkqPP4G/amEV27rM0cm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN6f+112; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN6f+112"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C1C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763925113;
	bh=szfRnf6Su8+VtKxgAfMWWR8XJ8pCJxwe2r5kyWAnyQI=;
	h=To:Subject:From:Date:From;
	b=VN6f+112PwZoRdIDv8Pcu4hrHYnYljO4A06bmXa1JrbWMSxPXrUuDkDPTpwQB9Bz2
	 nYpLa0e6kFsQXPrkYdVdj6ZmAlHPMUm6frJ66Ku+84upLSmoNrwuUC3+7dDRkJA4Pn
	 G81QZ15Uy8Y+bxSC1VB18rTykrVHubbw5Wdq6FglkikQ3Q/p36gqXmKIzuuKwC79+C
	 sdEHU5qCpo7XGjp/RLDk+zOOOU9plpm2+okfKKoffPVYYZEqV6IyJz/Qor9HVSheeR
	 QMTFy1SzhjB/U8vL8YQ91ZjBtKf+KK/fWfc/nCoZuLqGGEtzofDUYRAl97N8meyOO8
	 GG/iv64Cviedw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DDCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392511358.26251.7036405926110232791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70ffae365ca8bb532e947712449c1c33d07f13f90f9ff4224388c24d3134e71
Date: Sun, 23 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763925113
