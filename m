Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D879463
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738289154; cv=none; b=jp9WZ1+5uBhKvK7hBGh6HBB/DMDBpuEcEzh0L0g3chn1ATOdeYqiF02x5NdyXSwq96DYEaGQGRq4JSxnpFnYm0vM1+JalRdBSJ+OlUkp2TOjX4gebUmpsyRJdt17LUlD3zw3kuBpSD1oAwGwuwm5oXaoNOnmzlCNfbUKBqtAW9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738289154; c=relaxed/simple;
	bh=YRop7y8NWMjnSd++xZvnEKewq3twLIhejNRSQIMJX7Y=;
	h=To:Subject:From:Message-Id:Date; b=YP1uydueJg+YmjyrSNp7Yd5/5PPNuW5pj9OQRHpHE5RKz+AZLrrO270DSQ9Sm0hb4RCiw2FKqbmmuDVCKiDkm9nvH59nM8Ioq7M3bLEePINnhY1hUp/bZYsWWjmVunhouQwDFazW1nUV3b64ZjC8gii5Jln6I6STJ54xYG1BZec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+eXx1me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+eXx1me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2081C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738289153;
	bh=YRop7y8NWMjnSd++xZvnEKewq3twLIhejNRSQIMJX7Y=;
	h=To:Subject:From:Date:From;
	b=A+eXx1meF1FxTNp9xcUrxgzPIF9mR3/c5k62q0RfWgw28/PApDNEUGKVOjWVWbgjv
	 lKjiA44rRc04A+HU+SGf71D6VZBYcvKmEKqESitg9TjVjWz0LxQ9PcWQXUySJa/6wW
	 uLzKScFfe5fhM/icDxkAq8Fd9nXCU937NmDenbfF2ztLPmjqV2DIZDRyUJ2JmvqO53
	 p5+M1cz0FKZPpamF2DWhH9zCsCTdCle/YHmq74r6wP2Xoi7kX7MyG7whet0GTWsd+U
	 KJ4oVlhA7wjfgmBWDr9GcFoqeEJAaoQkrXHzbpRmil/sx0l1qf/Gb8Fy2T9YS5P/Uc
	 QMNFhIqgdnjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B710C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828915359.13218.14385649197455815682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9039131d7695bdd48f9378b6011ee3e88575c7878dc9447bf144bb0131b56fd1
Date: Fri, 31 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738289153
