Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66994F8B2
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710971896; cv=none; b=Tk2IDlnpZ6mJfcSbGwHLQsQDKnP5nOSZvPCLO+xQCn+nd7PpR9NaSH2AlfowU25MWzOkLmHUptGw6t8tLmEqrD/uakMD5Frsj5n9P6NJ4hvACB0rlIBa1lnvt1pVuYpwSds9yjmX8qrfsn6joJH5EFADWbThAG0m9/oWxTX9tRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710971896; c=relaxed/simple;
	bh=pQw+WN6EkeaR0I5OLk1p2hajY4k1FuUJ7HwjHLxf15A=;
	h=To:Subject:From:Message-Id:Date; b=j2Y39vd2pbPwS1mrTqr8Mwgxvtk3Tka8TV1tz5zvA++IbvM51s7I4ZwUYGa3o/kQYSiEbNkIiIeV6AZnbyK3BzR0yTRkR/Wf98xqCDRJdAaYuPerT+qf4+//Eekic3VKEe/aaPp0X6+Q8OScVpgrYIuAofLc/EDwRbD6iJ6/Gtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmnrKqZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmnrKqZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E84DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710971896;
	bh=pQw+WN6EkeaR0I5OLk1p2hajY4k1FuUJ7HwjHLxf15A=;
	h=To:Subject:From:Date:From;
	b=bmnrKqZ/5AVmPjqFfNpjotgi2pkjZ28tBV6la5eaRoemwQeBAmw7NsDOTCeecaVzB
	 mqCLuxd4MBHb39owkepj161LMSKhSgp/CpzeGbWn9CFnNjyZA9TWwyFZmKiJyRPGjf
	 LF0TXdWTrYYZ5okNVklv/j8T32CQi4azqfuOAEJ+aT6OMC45sl/rULPr1H1iOWzuu3
	 b49XnoO0DOk42CdwoPoGq1qJL3E3qD56Q/bm/nXWvhZTqAmji06QyzfVpG3x0eAe5w
	 /mHFa4XImeYndhkHPPsZ2OAWw8qOEMRgK9g+yk0KbiPrlOAZ9Z25tHLUqKwDlpIIHX
	 WsbhYF8leE/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D77CC54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171097189637.9417.3712364546071690423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef5173442ff6e72f461d2133cfbd7a29b4100a280faf7fd5c77f79c9ceb6e36
Date: Wed, 20 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710971896
