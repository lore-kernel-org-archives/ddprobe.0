Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2BA202967
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742287194; cv=none; b=Bvzp1RZZiGgkBUz/ziLtYQovHapyvZBHfggwcV89RjtMkDKoHMFESBP4ut+IWqGHkNvxJYkIy9es+bg3T1CgKbRSwcavpGnRVJIOGZZAkMG7Qh1LqXfdqphURYMJXmM+Zx77crtAHz1ruGoFIxAU1MEU9zqDMQ9u5MVoxBHoiLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742287194; c=relaxed/simple;
	bh=722kWM0snGNWg4RW8vyH0OskUcx+3/RQQypeynEPsgA=;
	h=To:Subject:From:Message-Id:Date; b=fwn+hvqJv4rpRZqnBywC2H/8+Sk5NhqciwJqGGOJ5KZ7zGymm1fo92md6RiM473nOxYeWRl5m1x/A3J19zLSnaIqjw/usfXIPGZzMUcUx3qZGeM83bAh0m3i6r5LdEB/yGI5YI9Ifq5fEQJMEhgIDGHYi1TRIgcBz6aJN4sr5lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCl5KYbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCl5KYbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4DFC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742287193;
	bh=722kWM0snGNWg4RW8vyH0OskUcx+3/RQQypeynEPsgA=;
	h=To:Subject:From:Date:From;
	b=HCl5KYbCgWS3joL1QycLY2aROT/MO8YjmVVGgajgdZmv6yz2DYzv1MYGC+rryLvzw
	 QNbsfvCClu6byhNUFOcK1Yw5XmGk+9hukw/qcLC5V8wj8PyQYpzFds92Rd9PUH+y7n
	 qmvuFZe/JK27vAN7W+JBqMsCxrp3L2Od5JeyzHS07Qfjg/nZactWzfVUNl8S0GVyqp
	 pJQna4BPx5Fn3TORieU8cQCEQPOtIGbwNsNS3GjSZ+5ghbxzgZym4SCgB6JTNvCMhL
	 aK9rVUD1Tg+iH8uMxp1HwRiKoteRe+Jidom6TFNPQHKoSit/nuK0/sXhem8f2CNHb5
	 KfXLaH6BoCnxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98918C28B28
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228719361.23847.9423012506273109297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bf15260661bb82f68d4e9cef69cb98b9f6f6fb19f79832e9b98a4d327b96d8
Date: Tue, 18 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742287193
