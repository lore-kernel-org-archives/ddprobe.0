Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B0D1E47AD
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734111354; cv=none; b=q8hmolMKmUGQpBprC/q5TB7+zG5hmGsRWpLtIJZbcwdI2beaMS/EKNusSZH1Azs33CkKreoM7yCeffIFlTvOCxiy9ZjaHUh6Ig52kZbbIyCUcK/2sHfEJmna1xMG3ZV8bFT477ZJRKsS0BG/t7TV3BaV1nDRaOkXdn0fmzxzdT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734111354; c=relaxed/simple;
	bh=kHR2uVZIzeZvgCbj+dAUpjstXZbd/qoaxqUcTZv/UEk=;
	h=To:Subject:From:Message-Id:Date; b=LWhDmbYed6dka6mHgxuo6md4n1yTrUH7xtcxPEtdQ1h9xLDlZ78bQSGvqnuR/fgxhYBiYb6e3eaTuTnLHd7PAR7+Rgk0llGCnvZPY5w8Pjs9aejkElrcLGOojGXQDRqU/PB2yzDbOCnfSJo37xxwuQGynNuGOEU1ffvZy8PCjmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN2K1Ugx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN2K1Ugx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D1BC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734111353;
	bh=kHR2uVZIzeZvgCbj+dAUpjstXZbd/qoaxqUcTZv/UEk=;
	h=To:Subject:From:Date:From;
	b=SN2K1UgxHz0zQBSn2wJOaFkCH2nIRlpDjjUr41OOh98r8tsQ/5t9eP1rtSPZ2674O
	 4sC8Zp7HlupzLM6utMn75xZCI26HA6X9h7xNp+1yDSj+ka9lWGROE1akxFIki7gKZg
	 f+HduAZttHZ+CIdB7+DDFwA7yTc9NBSQ0f61yMYRWoRBurWX7ED42dqdBKpEZFzFcq
	 4OhaJ9ShACQnb9HFlvFYKlGxPvktucVt9xF/pagPT0hhwwdaSfrBdzHJirPnA7ueVt
	 lUc3zqW5vWC2iayiL9STgXMJkf5eS7YIhFNxm2YgGMlZ3zukQNi0g30Fxye9bxqN6g
	 1oVcHutDk1vBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE2E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411135360.13965.11561622117968378575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded57bb491f86eed5170370435a4e52465298015d3b9610cdf32fa5a13c24761
Date: Fri, 13 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734111353
