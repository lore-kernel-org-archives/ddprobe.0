Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7200337187C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787911834; cv=none; b=XJig5g+Y1dKWhaIyo2zAPHeNug+doJtiL6aIcJIigsZHQlzJgdW/RUAGdzxh8S+o7Dqy9Bct0t7riiWQubdfw6Mh2mrz9jCz7yOq4Iecdygj0D2JJh07saPEuXA/6nfgR68369S8VSMXD12LgkQHncc+O4k5a2iDoi+gFrtT5f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787911834; c=relaxed/simple;
	bh=2cNAYXzma1Zthr6+DZCr8D071qASjW6KKxnAqkQM3us=;
	h=To:Subject:From:Message-Id:Date; b=EBo+UqfoM50UQ7pGJGOpZly2cEFJJP6BBc2SAk97XqseiB+1ubxMoDtmNp6S3Yz7imbqzS3EGxhPXCa7R7dLqoS1WB3Mo3rSNLGXdUqztIfw+Z6j48h8iQon3bBRjmc5+w1NVxGwZe38y8ep/m8bbTlU4IEORRgPmecqUB697c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fwr/pLOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fwr/pLOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F3BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787911833;
	bh=2cNAYXzma1Zthr6+DZCr8D071qASjW6KKxnAqkQM3us=;
	h=To:Subject:From:Date:From;
	b=Fwr/pLOZWgIbBc1b5uZec+5m5IDRYfpMZqLYeKFHQRV8pI/VJtUWEbwsUTe73N5vM
	 V9cUJcHSA7dNdcqoLJXU6LnCyQQysy5LU0P01RwjKE+WRMW7Rj3ukwGPT4IMuEKRJ3
	 MaGAXa+NRlpgeVhWcGJDCP+cJ5shF4Jq2xLiDCrqVdwsL5DsxwQwF+3IcOLozxyUzV
	 P6/nqs9j4CXhfdtGYeQ1YukcI6dRT6kSMkI6oOO/q2Zqux3saA3/Q/8Dtkt0gKwbhM
	 /+gr3YjMFrDDkazkRLsA5f/9ArWjiWnBGVsPT7TxcMq50To+mXpk57EFWLznwOma8h
	 OBsAL3bb+3roQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC144C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791183369.31657.13640370274066684990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3649cf33cf3662569f12828272c9d9588d969dedaad6ebde3572ce0882c4e0
Date: Fri, 28 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787911833
