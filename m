Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4048226AD9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748779794; cv=none; b=uD3Vr3gVIubvRVz+ivppYlj09qPqMw3B2Ft0ojGCOe6bsTzXiDACOOTYBEH1KDFD3Vi2xlZVMKHr1vEvIb2Eq9q7Yso88GDga2hg+TSlhbTfbO/Ytj206jpDaGBeprT0p0CzPDgImuXa7rQUvKxBhQFRnbZ0fOblIAqfNlaAMzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748779794; c=relaxed/simple;
	bh=aosETpQClEA/LRkysvdHazjG/NkU0bXGrN0ranhsIGU=;
	h=To:Subject:From:Message-Id:Date; b=i4F+XQiotfSy9gW/hgqBpTgtUqbflzHf8XDfklz7d9VlLhfqa4m1+o1Om1rbaHC5qKe0kj00lxMjjZTrQYKWJYYLtaLXEaFbZaonF4fGyXQ3G4g2/YRr3Dv01lyIUwnIHPw7wohLAFGm+x7bUm0A+BbJo67eUtKZE/93AP2nl10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKx4L3nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKx4L3nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4368C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748779793;
	bh=aosETpQClEA/LRkysvdHazjG/NkU0bXGrN0ranhsIGU=;
	h=To:Subject:From:Date:From;
	b=XKx4L3nqFqUhTaBcBc3KwK2ekscj46ypQI9l+vZ8aL3hJpgIhniSvQT8qbsz3OOXS
	 QiJjc1PEsmnr4K8iK8DPoACL3CDtwPfq5m8IEebiK6LWqU3VYMJCvgzSolZ1y8uGF+
	 4kwwSlf14EflsfvCXtBjGKn+qPEcXlU1pcvrLMxwlqeZPSgOI3cYY9yld8Anxbntyc
	 3iB0hKvz6Hq1jGVDc9bCSA4va5EFTwJDrG9Zr0B2SkvlJhzzrnZ9ponDOnyfhx8AQ0
	 B67Giu0pHz6S5H3C/oxA0H4IF1ghxV1POjwk2YgT4ot4EnwqW9Ea6Pdq9rl/Cw3BDQ
	 oTq3p+MVxgSIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94233C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877979357.6537.8530883851692215230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f13e6e5d65ad6ad192c7170dd1f094e1a9934e2dd2236ef19a252f0243b02b
Date: Sun, 01 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748779793
