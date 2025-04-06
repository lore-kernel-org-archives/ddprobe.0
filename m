Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482B917BB35
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743947394; cv=none; b=Mnhs68LY7bxQocAYeD/9f2yWJfnolJQCDl6nfKFsW5K0xOcGZv+f/8Gpvi1TVzulEEwtjL123+Y4N5N9YvXX8PRkGAehYtYqOHI9zVYyZ/TrXNgb+trOZ+t+VU9tAP9AvF4FkP5QLJ/tF8xU79FO8g7xqcuTs4WOoE/PrHiTsCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743947394; c=relaxed/simple;
	bh=jGwRPSEVHln55J+nG0WhtJ5EY3Sm9Hc1C9Na09ysWfI=;
	h=To:Subject:From:Message-Id:Date; b=DZTJ/6Vui8VRO1y3I51GzmcWg9jbgCiFiHMM4GBkogARdAHMACWfj74lhFvZZhjne029oIwOqZOot4WbvHJ9xUi1/BfU88RqC5Dd9iuLPgKxR2TfR1NLrzJ+7D0Xp6XF6GwpetYIUP82vYew4aUYleSflbKvh0QC2xXxxAUwue4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4aPHcH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4aPHcH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF681C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743947393;
	bh=jGwRPSEVHln55J+nG0WhtJ5EY3Sm9Hc1C9Na09ysWfI=;
	h=To:Subject:From:Date:From;
	b=C4aPHcH/QqbehVosWLVCQ9gn93rBR0xmpIKe5OhOb3piof/o+gnRWichIfO1paQyA
	 5CLD0TX+uk+xZs3xRfwfnPgyHMDXqIy1ObIb6+J5n3ScHYCc9pnY9kmFh2Ep0lIH8m
	 WgCrXOpkFQ7E4djoZEoKtImOD/wSMFQHVU9WyRiYy69d1RlD2IAX4vKsqn67CfLYQy
	 I/g2BSV+r2wvsgm4YL3MyjkFwNUTdENhihEv1hOx0O+x8TCXjdqqkpGbwBbRG5hwJW
	 98GxSai0M6wY96Vyv9LTW2fYbDfLGcfwRq2zGVDVJjQMAmZAf4gMLigkziZNVYxRZq
	 Nrjg4akGiZ39A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB0C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394739362.4974.10840900665051013912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f61d55866a983d7180f425b881962a6d600609feaa50a14411f0229ce5d0fa6
Date: Sun, 06 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743947393
