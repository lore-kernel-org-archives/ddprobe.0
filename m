Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340CB1802B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748317794; cv=none; b=qlMXmkkY///gIKUWSkH7Vxkk6euokTkCIPT1G8Gm29yr2RAxC6STxUAdVFpAa5si26LuLJEXQRNd80o58Km7lNfksNp8udpzqUiBldi7vKNJLyw3sBHSfcYMAmzeMnwUxhk8c+2P2iRuXUpOzBpAp+PAiSPRSiLk4wQSjN0EJAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748317794; c=relaxed/simple;
	bh=94RQgPiUAP5Trq6HVQLGbDtlALg+b7nP0wGFThRGE9M=;
	h=To:Subject:From:Message-Id:Date; b=lIMnIUP0AiXULkaf1hWOQclE9MCnQcT6GRsABG82VrXIoq0BChPrQSHKMACQzfZlR+axnveZtkfvPIbRDlMe/0RxRHKEFMEXRsU8O76ZMdTZmWrgQM0WqQQutn2u52vbhwT1SClY804j/3pSDfuNDjvaP8BqKlW7bwUdPZyb3+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqEwtxyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqEwtxyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EFC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748317793;
	bh=94RQgPiUAP5Trq6HVQLGbDtlALg+b7nP0wGFThRGE9M=;
	h=To:Subject:From:Date:From;
	b=CqEwtxyYFQLu4gjkY5flqVU3t26xYPNR/tDtQuhcyS1BaMnhZxmdzAglX0/xWOm+D
	 aXbiTF5DLJwKgeksDNnTwV7Kr88azHf/dMqhQzVAiPk3Vjy45lWrA4eEjgLWSWlZTt
	 xJ/Un6WucAMfi+t/TuKJY20er12NK0CD/H9DzhQnukEunMyTqnC/qjgrNvhmwzerag
	 ypF6CmH/XSXj0vSGkd7C6jlROy+TpmrF3NLsj5Q9tTHeAlY5VbAWq9U+2OT9Uyl6hp
	 UKArcufjj76Rge18jB5MqNWkJ+meHY9VEvlJUZeafqwWnz6afCdAr0WzvBaK7pj7lM
	 vxts898GJGgww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E493C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831779357.31538.17341697211878442687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc995c89fae0e4e851f407e19b2098b3b0e73631783c4b3943a47ed71d2c5684
Date: Tue, 27 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748317793
