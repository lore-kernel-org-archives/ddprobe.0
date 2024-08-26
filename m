Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95A68172D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724699753; cv=none; b=U53qJKoR5S3XaZAf3Fg5dXyv1vrn/az4FATEq9HEwdHPXS22DyJBKKb6ahtDd3Fhr9RyQ23LbugO5fPXvC04YXv3AI4it96regg4mqT+tR7rHzngW2OtpFXiZX4R8oecvOOVg+PRjaKT4jsJP1/Rv60Bv3wYgoYt1Iyx97VYl1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724699753; c=relaxed/simple;
	bh=J3uBhUo4ZQmwZ1GZOnMULvqB1rGa2ZI8cmwMUjYZvmg=;
	h=To:Subject:From:Message-Id:Date; b=tpCT5b1r1Jnd+o/yi8S6fxWych/uJcaLsTyHtbWJF00U9A/pXPZH7iUqPg9qKkrJJhsBXpItGZW6pJ3PfcNZycZeWsdF1l8vbG7r0nv0hRCTLNa4hdy9qCMSg/GkA2ScMrORE0UCjiMyEtRCxyc7fni9hc71enugBZaUA/UwadY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcRLSYfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcRLSYfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA7C4FE88
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724699753;
	bh=J3uBhUo4ZQmwZ1GZOnMULvqB1rGa2ZI8cmwMUjYZvmg=;
	h=To:Subject:From:Date:From;
	b=FcRLSYfBbeiobTF59cMckG0eAGYC1ojejhHyn9gNwt9mNja5I47ljjBtpA52E21Le
	 EntIXpqNlbpHu3qHNLugmH8eGo2Gr9NM+rhW5P9c6Vq67tKeGR9bXhERn/unp8plyO
	 Se4/3fgUWYaAjwQkY5g83CXzwUneHcshiBexgUGBbCoXdJ4ZsYH25qiW8Ez2OrrmqP
	 5ZvaL/kjDFnr2I+OE3iFyxCoq9QHxVv0AduB+CRZ6YfIWh3b1hKL/nk9ECc2n1lJBj
	 bZTyUaWGD0r0MN2vurVkLiIAzmdoUU/rb6od33qnP3nE2yJNrQas/ZgtpSVWOKuMkg
	 cYOnzFpB0qS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B0C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172469975358.10777.9933593884615305804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0921d2d6559bcb1959a8216ba5dec34e2a5bbec435e5d3b83dd11e9e67f86d87
Date: Mon, 26 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724699753
