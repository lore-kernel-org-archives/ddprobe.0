Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D54374A0C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783358913; cv=none; b=uso37GjBC9TJ+k/4YLNUv5NfClibRTu6qe+tz0VZFVXmlDcJ/R2fo8cVUgKzn/+ZxZYO6izeMawCWPZCZ+jXL2Qq7Ug1q3VDASFPdbQMKJUZ6VHRpDvRfstZzieSSl8XXhgW4OVtbwUqK7bVN0/a9/TibqbCxrO6yYQW5AqJyOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783358913; c=relaxed/simple;
	bh=LQ05b4Vsv8dLmVY1iQl7+vrEhZ4EQ4ZhJuxaSnqqz4Y=;
	h=To:Subject:From:Message-Id:Date; b=ucTvS6UQsAMlOca25zA3QyZMGx3nJfONZhghAGmMNeEIDQareh5LvWRgJmuPHDyA/Yjp6HCmiMwiRqOJ8+v6pWqeiJhlFYQ3bgfSaSZxNRLGa7Oqt+x3REicR2pBP03jeTPtn3vCnmNHy4XGg7ygzzgAPZzMS8V50OzZpEisTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ1Bg4t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ1Bg4t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE168C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783358913;
	bh=LQ05b4Vsv8dLmVY1iQl7+vrEhZ4EQ4ZhJuxaSnqqz4Y=;
	h=To:Subject:From:Date:From;
	b=uJ1Bg4t/0iv05tmrqFKAAEK5RI2PzfOgNO1TDWHJXK7jm56Bs82RzgXwq9YIvXZj4
	 NDVgunw5qIDfT8YY5sRueguGPmK2Qqp5Nrk640Kn3Fh1tY+J4EtCQqqO9xhI8/7ab3
	 ovH2mVeLWstOW2ZDOx+xZABUKVZDPASnx5nJnsJUgS83FHsMluyJp/Lp1PNGs44fLW
	 r2C/qY0Hr+ff5moprvnLCKhjqqiZdRpE/u6T4yE7VF8TSJq1mUAmGJpm+cP4J1jjzw
	 /1qRMPXiaQc8ilEswx1fUzB6eUx2mkbYXHmsjYPlo9xsRiqIcYEaUuTRPKRNj3yojK
	 Bqbx3+jbNM5sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAA3C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335891369.15724.6590631399751625515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ca3466f55de343b55099029b0e5d6349a959c35ebfe771753f31cabc2cf024
Date: Mon, 06 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783358913
