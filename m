Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196E31BCA0A
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728600955; cv=none; b=MYPPKcQTJW3YTtYsV7aGfdzzdUlXsyKvadPjUZnqVwLhzqZrCOcjIwvwy+DEmfoZw7VUbnRtmlF3mrddsReP8XYyYiz5tPcQYKsO4ryiP1ZGKN83IbWf+/kBfr1yhXRcd4L3fQkEpPQDFtnbznXoCjWD0y+q95+RFWcTisGq34E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728600955; c=relaxed/simple;
	bh=ySUJyTH1HcOeJE69VK/IA0tMHd1aQAj1uMLaQ1Jkkrk=;
	h=To:Subject:From:Message-Id:Date; b=XHXO/LvKWgaEvFT2bqkj+aTD++ccVNDm9qMuv0IsjVqeNt3W+9Fz9JvhVzm6vfNF8nnv+8Q+dp67ceii2iJEvv0OAZbjlVMgKezWnXa8UpvZiisZv08JzU17uOGV8tfT23iv9hnAAE3yphYF6bWm5kKnIKwoL5fOcbewlZX8mJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhM6q3Ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhM6q3Ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB59BC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728600954;
	bh=ySUJyTH1HcOeJE69VK/IA0tMHd1aQAj1uMLaQ1Jkkrk=;
	h=To:Subject:From:Date:From;
	b=FhM6q3TaxfekKBSC/BrnylKfwCFYMvrx7sl7+NH45hCwqhovmxuV+2OoLNSaF1fEi
	 Yk7nNeL/C1JKXsKScGVkbhYdzAGTkROgmO5hwjrEhIzO5gxLW93D3aZZ/eS8ptLfLU
	 LAJvKGnZE9fQd3Ezo/8LQ1heUZl5OADn0EiigiypUgFQiLA4DzeJNuafwOkJ8KDxiK
	 PGgfe2RIznxygufjchRume7mWiLbL6LdNc4oa033Uc8b+8qhQvOKZf55J8ebvaAZ/8
	 P5lUc8PG9AbbGXiG12ofTFWHMQYzNItn5NoNb9Vw3LF7b4+oIKIN3mgB6CTbWesOR0
	 4QGFQV2Q//owQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987B4D24459
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860095359.3428.2193103195758241083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d757ed80642859f9af11f464cb9314089e884530dfb1d5737fba47317357f3
Date: Thu, 10 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728600953
