Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF6F2C21FE
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773887694; cv=none; b=KDJrYHiQTswjgutko5Dii1PmdS+QQcXvCzyoevy6iSpGhkfawcnIPstoKuBBe+fGgbmP0kpGW5Z7je3BGTSKmNbguankg3AC9nCggSs87q4wPmjzRmZhF6JPby1LxZqCet5piBq4uWhXg4d5JREM5Y1b7lYPcyM44Qr4sDNPVnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773887694; c=relaxed/simple;
	bh=HM3jPsptVx5R3LJuEzteOIz3qJtbg6p6TgpAJVt1pY8=;
	h=To:Subject:From:Message-Id:Date; b=GyWWRs3tA1mqvAMQ52K1F2fCajyyagJUppC0BYFgwY+DI/IsFLVE4weCzWChy132AIHc5t8QbdTthrOfneLGj/W4jE2OhXnbUiUJVsQ9003vBefsTcJLBxG1as724iejewEx6vhM3avV6xlkPRTR+UJcqgiDVTVRXyojMMI9ISE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFNWwmo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFNWwmo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1BC2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773887693;
	bh=HM3jPsptVx5R3LJuEzteOIz3qJtbg6p6TgpAJVt1pY8=;
	h=To:Subject:From:Date:From;
	b=eFNWwmo8S6eeeU2pPaGu9jMt90f7eWgbK9Ixgj5QaDi03biZSY4Apwfvj6lT21Mh1
	 4Fym2Rxl0QZNpxL5dxFdB4i4j2ay0ailuQtj/V0KBlvVai62NouDk0N668SStt1SDm
	 u5lZlhcMU2I40yrMVR4UnwZ7hyE06ZeR4epzss4ahdAu1ecIHHopSzqOUlZ5sIZ6c0
	 NHu3hKi+f44lMR6aXA2TkfsQy7rEKjLGH2fBXjhMwpgcuFJhPvKjjN9zUcKhXB26MJ
	 3YMVpLjFdV4RCuLtyTiXwKTjOyW3F99ez6e0RPf3iH3N164kreAXkkRVapPqxES6/x
	 /GWDMtx6pCrNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D71088E65
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388769357.27756.3185425510057391835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210776be6e483bafd503ed51d637956247eccc7b8d333792f320709f63cdd590
Date: Thu, 19 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773887693
