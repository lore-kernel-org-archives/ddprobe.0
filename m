Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1239E344052
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768537434; cv=none; b=ij9ekSHEHNAbInInUd6Aw+1GLGIGwHH+M0Afi6n0tUbLLAaqrxwp+sJ3ONj9CKNJfVINbSvnDgrs+/51CCtMNqei9ASjj/VORc6/Pqfyvfog4h4FWpv/p/Ap1VmrpfNMovJXX7ZbwdYE3d59pi11qRxTrD0kdsn8IaMcmoxmmdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768537434; c=relaxed/simple;
	bh=L1Zx9S+/yetFzcYpZUOVqQ73Um+GyU+YLZPIqhlaO14=;
	h=To:Subject:From:Message-Id:Date; b=ai9p+JzFWzyY9oCHdbFQYxRi0rcse/v70zee+RWeR+Je6ZqY0oCCzqwtpri3mAc4tjH/oPYaApH1DalXJ/mqo4YSiB+THB2cIgM41m9+ztvlBmzFN2YYCXvrTjYffgkWu+aPqq23PcQ2wZeMvjnOJY7xwhMJi/6ZqoZTpfeoQnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsQ/TqeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsQ/TqeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768537433;
	bh=L1Zx9S+/yetFzcYpZUOVqQ73Um+GyU+YLZPIqhlaO14=;
	h=To:Subject:From:Date:From;
	b=TsQ/TqeR8wR+2kMXc0gn8DHh3BCONMJKeGzuxJiVE8jgeMvhNPt25izoEi2dVkOfY
	 Hiv5gWqGroCFh9nULCWO/YkUokCjTrRHitQmRKq5EJqUrhCw5bGffghukKRrCMBocU
	 q0jCHQwxJ0PCVtZGSSD3zDrOyO/BRNj4jMbQHszNwdZfEhoa2h2qsmTR4puXIcZuk0
	 8621iw+UdhO/KJ0tIzszqPYKB2SNGA5Nt+5/34bms06ezCDwzIg7sNMwJ9y43+ehVK
	 KZv3vy4IUseyiIECLqAMhekHbwYOWbqygPnueF5+gZO2l/soE0Hb89iGoBQ0YvrG/F
	 Nc68H7Gwq8SUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91350D4A5FC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853743358.17026.15458491862109504768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32fc3bbdafc793845ef42488c525416dd20ac07359e8d03f2c310beed0c1663
Date: Fri, 16 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768537433
