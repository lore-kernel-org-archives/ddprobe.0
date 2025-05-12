Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B099262FEA
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747042794; cv=none; b=F8ze1CxJuSXumTDR/QTPG6tG08Ax46KA9r9KEjBlDIyIOHCi7bR4Ior+OADGBl7CxrTzxCHE/9dXQm0hON3MLaTHCFFXq88X0skIhrFjYxsCi3mngvf/0VPH3IY2wRLFkVK5K6asOCuo5SPJTg6r3lD8CGbBw6c9CvFehAN+sr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747042794; c=relaxed/simple;
	bh=xqISB/R9NdAGBzHWI+FNFi+r4TSi4eIKvmvjqyB+HhE=;
	h=To:Subject:From:Message-Id:Date; b=Kze2CD/b0kHiD7c5Pv95PyTWEF+j/iDFzvWAe/O4zHUQRfpG0mR6FvFuAeN2tqoGYbf6u8z58kyY2kJhozipIa/JjW6vNkObH81NyVElwQIpmh9MbxpeBE+LVrOcpTnpT4qqtAd7sLVqbuMx+wTCl49p0zMFZNaCJrY5gpO5k0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m77c57PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m77c57PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7D8C4CEF3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747042793;
	bh=xqISB/R9NdAGBzHWI+FNFi+r4TSi4eIKvmvjqyB+HhE=;
	h=To:Subject:From:Date:From;
	b=m77c57POSercqbjHmNoKgMOYrPIyxuP1GS5YnYEolWtgrcr8Y1a/1XfulkNX1Hc7k
	 jel8LkYMKLI+jr4PFEvLeSU4SZvV+p5SjOLQd6WP/L3+MriQG/Cns0e4i9+REW0M5A
	 KeElWWCO1s99GtEZFuYbNTtuhx1hww506mZf8mPpvwvVit8kPgDv3w+PB1W9xgtMCS
	 1OwbviMxq5W5oj2hfiarOqXmy8QxhazDCsocVjlgoCNY/nRdjn16hOzrhe30k96APj
	 gvsOyjkF5jq2YF7vkjOZ5+4FlbIxk8v2edqIU04rylnCx7BCkydlvLOQry4nzpr7Jk
	 6Dd+OJFusx/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F738C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704279357.5524.2238934865138919401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4058b06b07490696452618be138a66228419e54ae330b550595e6c48140d08e1
Date: Mon, 12 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747042793
