Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFBA1F3BA4
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778912434; cv=none; b=iz8bW1X8infMXhdY8K5yuMV0DZM5ibDobwFoca2Vx2iXNO1wQc4Hxo8xEtw9IW2UiU0phoibG4RcN6G8/mitQB138XM0jVQAX7UpW5QWvKaQmdFyLBXluRcvpn6ESvlYpwBF6K4XUPbrZ1EBEnrTbdx2/ISB7mCCb0H7Jcdf0IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778912434; c=relaxed/simple;
	bh=7YXZ0NTDvSCOvIebtpEosKjg44X7B0QdE5XgAvY8XGk=;
	h=To:Subject:From:Message-Id:Date; b=c38HpacY0SGRf7ckXxIc934e0Biv+ZpTzFiTjmA+8sn5oeTAy51Mx0+jjUJK0FET6nUC9uq1hVvo4PdY9mIjcVuABN8D8qhJY6mejuIEm9AX5ng4l1ZgY5S+gl/qBroLZ49Km1qygOjzHs6dBnYkCtJdU63BCCQ2KQxDj318d68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+oIZXDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+oIZXDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF964C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778912433;
	bh=7YXZ0NTDvSCOvIebtpEosKjg44X7B0QdE5XgAvY8XGk=;
	h=To:Subject:From:Date:From;
	b=s+oIZXDIMGtyx8mTHURtf4PTEul/MiVwprH/bc6xDZqUZVFoe7+MSkdfdTYWy7Jzx
	 gepSFG+zXlFX48WHOuUkALiumb20/uJhbDZAc/xxXQbSlYabIMLbfYqCOA6b5zN8JQ
	 JY4HL4QskwBKZSnNmKKZMYxg4Lz7fRjwc2XfC/uyas0iEoxwmSmBGTE1XO3e/HGtum
	 DsaEX5kjmx0H1L/DdU9avH1pI8fZhJNKqMB5FvoXQKDz7x22LHJzHIqUzmoTevJkcK
	 O80hdWL8l7hyAGey0XzpJKD5otbqMb6+PwM4a/IReXL7pBYEuMX6MFWcOrFw9VzcYz
	 ZYgiKHlgA6z5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC49CCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891243370.13156.3758718758656230040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94844a7424c793487c87b2cc6febbedbe9100f28ac9f6a17384a75aaac14a6e6
Date: Sat, 16 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778912433
