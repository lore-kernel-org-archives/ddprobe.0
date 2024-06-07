Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8EC12FB3B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717756643; cv=none; b=sPhr50l4Bmycg5uctR8yCetOScA1+8uAh8UwLk9DQM3feQA5FOS50twlkGwuLH4L4w4JuTauL7cWmu6nC4afBNHXtqvRrQMlEDh/RfDGrfbhDdFbcFYuKbKf8t4+rmKeM3jhYAdlG18i/RrbBjYWEAl6sUU/PMUVP3pRoqI6D5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717756643; c=relaxed/simple;
	bh=VvZQHttb0SPUn25Gd9eHyMr2v4yduozcZIyZXm/slrY=;
	h=To:Subject:From:Message-Id:Date; b=CnexujB1Fmm6uP4FDOj/dgM8+apGE2bz0/8ADEIw+L0DFUBJxyUzRgK7bz4Z7MFh2kFu11trl7zeHE48C6XcCWuso4sxIvhYR3sojpp63qXZc119UKezKI5YS6sMUOaB6IuFomGzzkcLiW0pxL8pvPWfEk+C2yBJYyhdevbLVRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUXjcXXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUXjcXXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC6BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717756642;
	bh=VvZQHttb0SPUn25Gd9eHyMr2v4yduozcZIyZXm/slrY=;
	h=To:Subject:From:Date:From;
	b=KUXjcXXUOxalB3Al3+7R5u4ISXRy+W1svSFhm2lbxTpuxE8SJpABgO7U4oJHliYaQ
	 rjRXOu4q7ZvMbeQqcwhPWCtobdpEVvtA9sXci+EphE0iBqSwBVie1iMIW+noQv+Wa5
	 IF/qTW2DX4C9gJsPoas97cBJXccFc6gjPMq9iP7/nXbDaAb1eT7atqhNfL/Bs6+qkN
	 JEkVi6xWofGwAYI90besk4PJYt/73z9JGt+nwb+QGsM1lW32J9Hu1DNjBGLYIY0uq5
	 HYncDTl1swVaFHN78UKwKJoZ5x/z16AfB+HL/3HUkaWoAf+SZ3aSDla0CJbIcfbu/i
	 UNdGvWD4EqNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FCBC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 10:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775664278.14678.1746613813348813776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fc699065ee13cd45bd61a2128399c152b66476a32a7d2eacd1652853454477
Date: Fri, 07 Jun 2024 10:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717756642
