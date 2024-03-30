Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6301C0DF8
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711818497; cv=none; b=i2DBt66eupdj0kuR9HMf23pdfLPq+9lpVPmQWW6uND9gyAN8hEzA9iX9UkEyb0WIZMJXK3h9TjnxtYbLVrLLtfGbjIfZjqlMPwAftbilPUKT2cvmwF4olV1ms5bHS1cu9Vvnh3KTsThr0K1gb181/vM8TIR1Cx17D5mX+Ufq4RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711818497; c=relaxed/simple;
	bh=vinuRQGNQSbDGfIVuyYjyODyFym2cWilxaCrg8DLih4=;
	h=To:Subject:From:Message-Id:Date; b=U0kI07z1TmiFDH4IpXCL+48I0nn9fdhTCEPzAb3my2qH6/xjQv9CzfNU52JapUUjEQMMajzIrWXFwOrOyjIqkTmXJL6Dgb6ytQYhbXyyJ5mM0U4v9H/7C89Zg2lM7NmeVMdk23eWMw1DTk6Oy25m6M+DDpuv8gx6Sp4JqpzTq9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5E9gsky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5E9gsky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA59C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711818496;
	bh=vinuRQGNQSbDGfIVuyYjyODyFym2cWilxaCrg8DLih4=;
	h=To:Subject:From:Date:From;
	b=k5E9gskycvVERlqsls3c5PZ9/F1Y4V4eBbeBQGVJ6Yb0N2E6vngATu4tgtckIpqcF
	 JL/u+jpbw1rqVprf+wjs3lBZoAOAv5oO9qoKlRsLyfq8BucHi+shBAB/mvTOdjJFId
	 YQlF4WD0GniqRjWlKpAAI7VlvVVk4VCQFAX6Qx2FtiDfanJJ6h/8qoo/Rz2+Zcv2TV
	 SYYLiOu5xZvPkqibQw4f6sTMSF9rfl4ugC2EnGhdpa7xROC/gizl1xoiW6bkI4HB6c
	 cKGtSVpSahSXsJgIBZOoM9QHpFFZoLtgqTPm+ME+28UFMZKh37sb1c8mz/YISAoZuk
	 TqsY58pNq70Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FA9CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171181849639.17698.4434326934507660211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3ef03e9d8e8823588947e5f55eab7b66ef976e13ad7c0769cc9d358d1f672e
Date: Sat, 30 Mar 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711818496
