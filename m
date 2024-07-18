Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781D01E53A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721308523; cv=none; b=Qt6A9Q28fCqzyUM4sKc8F5S81eq/YrbIg57At0p7yAVB3gDKXszpj7EEqcKHi6G8W3Enz6VIKi6K9ZtAujAsVIZR5/zDwWKkx0wTxFU6nWkBYzBrUqVMMyUgToXy+vY53vbs3rOcnHtos7uXZCKBict8ElvC7u4Y/NqCaXiyz8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721308523; c=relaxed/simple;
	bh=GVZ27S5ers8cRAllnlHvqbGQOGZ4GZ7bbSWt1RuQGbY=;
	h=To:Subject:From:Message-Id:Date; b=RY/2k/jZEpETKLOnj+E8S5iKc9WER0/fyQmRZ/Fw7kcE4tXpqX2XnKz9pA2It+m4uHUGzr4gyyCoLgSW+lJeQKQOy40SOy6Kc3J6f2qv9SfKKf7yclpk+Tg3D6RFaXNeHowgQ5gtgksb29xUiJ9WZ4WUdFudMivHNofgVtyRLec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBP+479o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBP+479o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E675BC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721308522;
	bh=GVZ27S5ers8cRAllnlHvqbGQOGZ4GZ7bbSWt1RuQGbY=;
	h=To:Subject:From:Date:From;
	b=bBP+479oeYJJRhNaTHbq8vYkl8sBglcbZBShTRwEGYvg/4RjCVjJFY54PPPXXG4R6
	 O6wfnpv3Yg30rd/D3JZDhsIvDmxqO0b037B14MTdbsNabbcgdjvjRY7ppunzZLOYmV
	 bxKAIY9vCmh9OPjRIAjHAhb2oNJd7/ZAoMC4h3wdIFW3TCzNp+GDYM9Ir+mCVMxl0D
	 2yvJx/BIx5wE0dj+KRGsk4m2waFgBTY6NISiaARhiUtRctB98RWdqxTy12LCbI2Jhn
	 bbtFuTAXp+SZbGRqqW/EPCRPHtYP/CuCmVA/n+Eungr8MgkUNtbDjIb0wyHKWvmmrM
	 9BUIEkHfsms7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44A9C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130852285.14257.9216959591697602506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8289d202e2bca3b80e8cf2cae9e68a7a34e6f7f84f1065c01759d797f6a1ebff
Date: Thu, 18 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721308522
