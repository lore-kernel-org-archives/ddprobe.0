Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D7EAC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734449754; cv=none; b=EGSqajLzWYGiPbIGyoX7KEJtDqrbo3u9GtS9d+KbWbvkAjsDdQtv28u9lezmj9BIHk+jCxtRJ4XE0/nmLImlQhlwDmPJojuVAl6lohIULPL/LpcGGmPsYC5BO7dW7voWyCOwwqWamboa5mz8uzhFpIMYH/gcyMiccRYTLNPGmLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734449754; c=relaxed/simple;
	bh=ppfWNZm0CDrjGHrSPDEhnnHCrsAhOE54w8adNWkTczc=;
	h=To:Subject:From:Message-Id:Date; b=Y8ZONFxkiJfxyXm8Yb2CTQDMblr6JoA/P4LYf3m0Nvjz2uW682pSrq/NBR3Umk0ZeGBqV8FwK+IumJ1uSfv28oVbWp7KTNSkMJNRMJlrjPLcVnI6DblynA5G6gntmaF2tlaot3zc4JRVDyBmCgMQ46qgCMKJN6tW4gfVkNec4f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDHBB9Op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDHBB9Op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7170C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734449753;
	bh=ppfWNZm0CDrjGHrSPDEhnnHCrsAhOE54w8adNWkTczc=;
	h=To:Subject:From:Date:From;
	b=aDHBB9Oppx3y/wBDQFL4jTJmjDM4LSUjav3BFTz+h83BUqCi6Y2d8C62FVdyZZxog
	 bxOgYMXkb77ZOw9gXTiHf6yZYCwFkRflsE/yDI0KhTb+Cq392/EV5O4F5mSBgUgJGc
	 nAcXbH2eAiLUop6m3ztxmiTdvvqJgCdqLL3E+aQ7+/n41skWwf4U+e669SlfyeEqZ6
	 SdLdyd7/rGDXmHqTsu1jOdrg8iYsbbklzalChr5rFKP/f2345t88TwI9qTJi7Ga5Ch
	 kaWEZ5/1gCGCeJsnJYsXfiw14gXkfbBGNMVKDVR67cy56X6SCwE9JAhfjgP/20mMT7
	 AggNT4S8dboRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E1E77187
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444975360.4264.10317293454569825223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92bc45b649f09426344bb78004e74705e8725aca3c8dec7da9bb1a002726f334
Date: Tue, 17 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734449753
