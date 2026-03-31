Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C51A258EC2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774950894; cv=none; b=HlHZWLvLLkFeBh6xBKCDnMBmuxaYRkW1Sszre7/rICt87E+5OUMxblD2c5ntjpaw3gmc15XLE75NAn5cGh0oJ7+f+JHSdSG9ZZrPi/00jQThHVMqU2VQT7Bka6DNH1ZRBGNJP/vyYv2A2ODyPMYrotHF0zCSy9uUoK79dCMQIWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774950894; c=relaxed/simple;
	bh=DW1R+6t6/QUO51GgSDvRYN5+3pzZJ5Aqasi9WNKW8rQ=;
	h=To:Subject:From:Message-Id:Date; b=oX8EJ3p3NXSiHC82YQ6qCoVoBCGqEs0uQb+0qY9hrZHkA9LaJKTdIgoyug7Fys7grl1gE43dvSfy4VlUdYpReM3rmOf8PNan/kbfMuYWyThojIFGrq+1bHI/DHiudqN5ZsNu7lWdfsHiJSH9rMQJur8iY3wZTnp4waQgFYsILzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsY9qT2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsY9qT2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3915C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774950893;
	bh=DW1R+6t6/QUO51GgSDvRYN5+3pzZJ5Aqasi9WNKW8rQ=;
	h=To:Subject:From:Date:From;
	b=GsY9qT2YCqFcX03ocIdz/Y8GDJD16Lqkx6pGCVugyKH6wM+NsZ1iI15W6X4mtDcqB
	 CENGP9bIRUDzXaksCMQint1zf+8z1rVmPZy7s/q3wvG3QQcBBj54A0zPmvCz0nboK9
	 ZWCMoXVAPDdf/4D8zLALIexYhzakzFVAnAJn4H61ZF3unOcu84nCE0ooHaVM+0ttWH
	 P2mR78SLDDTpTFlNWYowsrDHUZDNHf/qEG2iMKIBcDhvJymjVtyvWQ0cY9TGHcOvTn
	 lNMlLxLyGHZgQhOgCPC3DKjiSudghu/RYbShJehd5PC7N11HubvtSblmVceOti88Jx
	 90XEX820TP2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1632FF60F7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495089364.27950.1759639930364157096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632fd2dc5d72fe42cbd7b800b9b5d3fd02da5d9e7d99c7d8380f2618d73d6250
Date: Tue, 31 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774950893
