Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C5631AF30
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768341834; cv=none; b=m0jVbbsB0RS+rA0zDDR+IGSrf3gwWrsTCg+F2q77mvIlgVz5Qm9wGACmqf/n+b+SPgLqMldqiPuRmozSOZJF0pmwEr+qOqpx9+N+DSrZKZanDwIrYQby9bmeyN3JiuAXcMQ/N+gsXM6t/mD7avOxEuIzIIX2g2rrAhZiEiZnfAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768341834; c=relaxed/simple;
	bh=fKao5J3Byqu0M52eimgKvn6vbVYTG5ehzk3uakqLfM0=;
	h=To:Subject:From:Message-Id:Date; b=js0M28t7MQgmgQqAMRZ/6BsQEj/WAxRLdPoU4MKMG8cE2AsKJFcfwmAl5BilrOblXLDG+v0TcH/6RxvUKRYiTUIaYOTpFbUpjL70dH60HyEbGr+sxJQi90H3urHhkJfpL7+Thh3tI1X7UoRwi2aoLvXUrgPM1Ww8bd9puuvTEsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxDRrpJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxDRrpJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9FBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768341833;
	bh=fKao5J3Byqu0M52eimgKvn6vbVYTG5ehzk3uakqLfM0=;
	h=To:Subject:From:Date:From;
	b=OxDRrpJAwJmc03cS1byJpFtwJmqaGZAd0JWObQ3cD5VT1T6otAuyc1xPIlJWXVWPs
	 Q+kHvy2lYBZk8NsglZJzVkat1mcy2mjISo4+EyLrGpYiTKq4J9g6gQ1iOI/LmjV8F7
	 pgCNk5bn+dWoW2aLRWzsvRyvbeucx/voE108FkMV2iSwwzyg99ThaVmVvEIi9jX8Wq
	 d/jrzs1ihzFsVNbeyiVvwsvtpT0bS0w5sJJdUmzcQu6SqV4/CgGTlGmzT7MAK5rULH
	 XwmDGZbWCSiLxVOsqTGcEcDbQzsdJ8MfYguhsYKAKybnK5HSRU4lxoaxoz4a5YaZvR
	 hoWkQ2QkTLHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254CD30CE5
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834183358.4151.2769910955699803961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d432ce0480e368c52cfcec7b37582297ff0076b5c0e4abc36487faafb9ae662e
Date: Tue, 13 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768341833
