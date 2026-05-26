Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8CA346ACE
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779816754; cv=none; b=gymawiy0En8Pc9d2htxSUNDr58E94kUCmA11lt8il7bQK2ORuBCHOw3KpLfuEgZMhQQGZZDDE95jNQpg8Rnvm/yvt4isZVkl8O1LmaV/V/PCLzF6vbmpFJ3kX4G1nNzPze7nIc/bYbte4FUHhTykBcybWNnEDPf41NL3qkbRhNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779816754; c=relaxed/simple;
	bh=YmT4lnBfIN57ATnvHG9wKRf6cS7IcHTfp1tO8QN0Qk0=;
	h=To:Subject:From:Message-Id:Date; b=Ut1Rg2c+BoWamXOh58RZBOxIDhj4qBB3Sm5Izh7AAMCxWAHAQmk5JmdsNUrCE2HfNAoRDyKdfc2dmUhUAKp74QVUdHWd3a+4qpvYgmcPRzqJd677Ky6mwYLapKdNXKIAoo1HaVCTASLe8OJ4QOyO0igaM1mrLh+y7l7I+4tmjl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5/qkQGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5/qkQGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00A4C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779816753;
	bh=YmT4lnBfIN57ATnvHG9wKRf6cS7IcHTfp1tO8QN0Qk0=;
	h=To:Subject:From:Date:From;
	b=u5/qkQGcXlFwe6I5OafGFGycZLtIkj2v8NuQ5xFdRh9xyfBBsMWrO0oBeAEHp2k/o
	 nLMA+dvTaJ8gzzix9WJBDSfshVfa/myNDVvCKxlxx4hawiixpfkzHPGlFJeJLrMr8R
	 v1jCdN59MGJNc9pjZupz+5SmijwQsxXgnvj0MUQate0O5/DpH0bn9ftf+U8UDTGbXm
	 Vrg/R13iNjjEeoXmkrARqctQoudf9DbaamQmDLeLBrXWymda+FF3dzJ/dhg6IjZRAp
	 yNp41a++hqM+1i9OWwkdHDuOsZ2YHP7dYwPa1YuXNWGwjCPAY0JWZOAHu/M5uVg3RH
	 icJeGQVb7u6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B315ACD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981675372.9968.369060888811421188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffc55265ceb92783ce3e7ef2083936712c7d835ec00efd70fe6a10ba1dfc83f
Date: Tue, 26 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779816753
