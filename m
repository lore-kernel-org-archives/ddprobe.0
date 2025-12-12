Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE44A01
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765499574; cv=none; b=NhT+z6uKtQYqBMmsk0ekRgNcKpRLzeWrhMJHw7dQgNlmtxuVIjUrclkBMQH/j19C2jV9yDGN2gNXgVPBncI1XRiThDF8K7HYJCxSc3+73UNEL5Aa/BKifylTcWEF0wpWGkRfF6jxTL8h5LHK0B+UqgjuAtmYG0kUfBiXL47YKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765499574; c=relaxed/simple;
	bh=0wT+OdEhi+mPyfIJxJ5WdwOZQdCSaD+Noyr9qnsg9/0=;
	h=To:Subject:From:Message-Id:Date; b=bfaa3i6DY5z404lmvClkrxXuxaW0YynlZhKF41OjFwBSazAsfwMXS4LwaHZz6O9zoNE7rZAlS2LOv1fxFY2I48xHV5LcEJtBbW1xJBRKElyck5hqMjkwFbelEdHReeQbevasjcq/A/m7W5yIt9QRWNe4gBhXJn8RN80+xEq7gYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQ+gL7Ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQ+gL7Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF33EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765499573;
	bh=0wT+OdEhi+mPyfIJxJ5WdwOZQdCSaD+Noyr9qnsg9/0=;
	h=To:Subject:From:Date:From;
	b=iQ+gL7YsybQjnFedfjIGcRqWIWQo+pDZZxApV+xurhyOZ/6UZdFIEqxN3qTOW+7Ds
	 us6NXyyc2zGC2WNrJdHrHo1nA0EeizSA7k9OSpRXqjjnpjZndmYJlfO4/3k5Oj60Ph
	 cTsauolXfmch37Ge8hPb9JTxDtaWZxw/O2ZQrXt5ziCiAnuRJ3HaEsJ7lkLBwTqz07
	 jeacv9mdYCM1Rjj3nQP37ujpT8by/ZW4rcEbvlU/TXGshSwHGrRGpaObrg7//vJS7Q
	 vjN/2LD9ef8dYcGI2d47yphX/3VIWQyx9BQLgjq7z4idRv/N2pShyS49i51KVgYck2
	 IbLX1WjgOuM7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B056D41D74
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549957359.27019.6598939171254229752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942be38d663fcfac1d28e5e35f4163ddc51f1c33861cc501d3d793d4279e2581
Date: Fri, 12 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765499573
