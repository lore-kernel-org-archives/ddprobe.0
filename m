Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCA01DEFF6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728393353; cv=none; b=QCFAZ8RdsfOUTkFP3jYKBJyTGZeLQ4/Td8209eCmAWwXZzFgUXCwVk82GdC4bZbsn7VuIwmiNKWZoAGxSZ0/ryu2X4cyn3FvlbiAk1wqvYP2NEDg89r1m+I7iTvHnDr/uJgb7M/v6pNSOEGr5I1IrsIndziA4OsE/nD9gVYEE8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728393353; c=relaxed/simple;
	bh=mRjbvnb/qhaxIuNx4EskJNm6lYYh6AgKME8tjYx8qco=;
	h=To:Subject:From:Message-Id:Date; b=QLZ3azj/M3ju3+PRDp2F3Y1jPW1OxmgK0sPu0NTWvJNRjjIBvOk09DqjnE2+nKRYUt4+noU6CBOm5c7X9l3GIBrSU9Wd9oqceTqxVBEXZJpIkNuyLI67GVKggookUy4X7jSnL0U3qZiSkVMkDa563yVhAzKf4Bcd8ee90nUURuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gze2uEJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gze2uEJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E2AC4CECD
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728393353;
	bh=mRjbvnb/qhaxIuNx4EskJNm6lYYh6AgKME8tjYx8qco=;
	h=To:Subject:From:Date:From;
	b=Gze2uEJqVG8aI83CfKZDKKdXoI5O/0t0961m60IO/oC8fmPfLal2ABPjqvg8bYpfZ
	 +WoQERZohY/S/y7w+Ec2niUGjyUJ+lm35ygp+TUnjeHuoBp7J3EFjkorlkqW/QwFfe
	 ODIrxYR9q8d2LT/NOr1NV1DJu5NBIhlSSiks9Y/YN/mWSbS0O5hCIjd8RB1NMmEr7U
	 mhNI9pMczG0OAuJ02pIjqoD4BWR1SMbXq65bZVYLMyuqLIYqB47pMrETNdicQbjWw0
	 Hbkip7Hn67Pd0uckoSbER+sCHRwu2BAhm9SyIVepwEIH0+lMHhDq8iKaioprbCURrg
	 3yl2mBOP20DTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90549CEF172
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839335358.2045.6601587725325782933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a97dd96faaa2445e3907947772087af93a4886aa9e72dd2f2342558052203d
Date: Tue, 08 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728393353
