Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA191798F
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732955154; cv=none; b=ue3HEaM6FHDJICYldGBkaXt4wFytovZJbou/XynokriUATguBdV0mKUrV6XHmZgxMiHowZsiP9ARSU03IdQJdARGWRj3Gq1UJFHGCxXq/+O8KGuuklYD4bjAnuTMzoNwfSG2HeqPPvYvBY56psRU4LEEQQv/9aUTRgzOSrU1c5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732955154; c=relaxed/simple;
	bh=1ZEuGASsHrQiEpKlOSU/OHPsOQ7Ce0T6CuhijmpjHhM=;
	h=To:Subject:From:Message-Id:Date; b=dGVA6w+wbxoVhruSnu34Fa5gwvBEgDq1o4ZqTlbg7E11nIwJuKpBuSA+LeK4625CqwfbWVkT9UMHelp8uNINtM9Ba5hzXj0H1sLDOBmgusQ9vZ3bs4J7cAKsjnnnwzK3uWeLdySsH33KxzdodzzJ07Yik8zg6WycQ+bNYaMlYes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBLCN3Zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBLCN3Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3E8C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732955153;
	bh=1ZEuGASsHrQiEpKlOSU/OHPsOQ7Ce0T6CuhijmpjHhM=;
	h=To:Subject:From:Date:From;
	b=TBLCN3ZcMV5X6wrsjXAT9p/D9WKrk3h1Yn5SEr8ygybx+jsJRa71glW+Opw8AJ3EA
	 1e4Gjog9dOlPgtyGxYrZAcWVMCbqfVY5yOVY4DbmtSwrnbhQM3wxbIgb1W+wSBRWaL
	 k8eN1nZ+uuODc+3H0KbamO+yUHbkU1pkbGFrYvy8/YKuH/xh3kDVfHQyO6PxdEJeIW
	 yW16U0H2UbQ2ZBv9BK11cE0Mpg5+YpZAw3aDbbDdg5y9MLJFiSlm3cFDGKM2BDbCgA
	 p8OKRB0SQJ6J9rn+cePWQr+ktgPWyDq8cvZe//rm8Fz0DZFIPtJz076rGYTat6C7VH
	 l9JriKgRqCXOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925E7D735F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295515357.20254.2463323596270741378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd08799088b0dc72863d508de5a2c27804993d44926ecf32ff7b27bb9a72221
Date: Sat, 30 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732955153
