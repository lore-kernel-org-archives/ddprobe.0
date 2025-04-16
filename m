Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B4D2557C
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744771794; cv=none; b=kzH99iqS1aXpt+mOaIV+PwHoc+tBYl7OA1nCnWYCIsTl2pw8jHHnFJceMEf5fk4W3vPFW4KWXMoXO0jfRGzlG40CtHl1s6+gj9/1wxIylRWSabbHb7WoxzCsNZgppYN0HQ8Cg97oRoDiAw332jT/93v7Xeo9575mwN8P0i9z0Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744771794; c=relaxed/simple;
	bh=nDvlxfhy32Oj4DwEmMoCE2kuRvBzp6JV+EUFSoosqKk=;
	h=To:Subject:From:Message-Id:Date; b=evuLNIrZtXbMq0BH3Cx1jVSLo/z8J0gQZVhWP+8vXNSUTK5ltsneJkWL/A7TcnxTaZcpsNotgTdZOCQkBj6CWNu9yP35ZDQwoyDGmwdcXUGgPaezgzFYvwyF03Pf9cmrwu3WfRwKSPsQ6bw17QOOeBhuly6S1BNwqaXOm3/Offw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXsbkpcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXsbkpcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DBEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744771793;
	bh=nDvlxfhy32Oj4DwEmMoCE2kuRvBzp6JV+EUFSoosqKk=;
	h=To:Subject:From:Date:From;
	b=hXsbkpcqGTG7Trg/Doxe3mw3Ui387kuYe/3AS89zOZNcqti+jjU8BSub6WjA8hAoa
	 +LgCcXxc7K1x/R/6FHZUNK4hWdogZdnilvKnMG0Z1Xkpqzm10SKeFqLfTl7rgSK4j8
	 usRHZ5PXlMtgTGX5LZzLYqtO6End23hzZbNsgvR8JZgSIKzcDx9sH03fc4A3kQEc50
	 Ftt2cxYW9wyBlSD1VaSrf2Qu19dJdppXj/r7NavOEiV8Azxx9vRtftJS5/Vx2+E2+h
	 SMW3rnwtU5nrDJjOYynpY5oMzL8MXrSiLCMQJAEqmhnRPDU7cJxwrc6uNvKTwEFgns
	 clsX/kBV77OlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65BC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477179357.18511.6004881229466971073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0fd98786a7db98eacb488e8ce1b98fbb5423315cda09cdf5ce1ab744d4f990
Date: Wed, 16 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744771793
