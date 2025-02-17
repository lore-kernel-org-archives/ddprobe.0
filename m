Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0218C907
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739824134; cv=none; b=L1HWQh80rc9Lb05i1bQ3IoC+dr21H+etlmLCDEzvE1pXggtVlIKG31iOve9pDuenCS/w3wCbP/uwFolqeUNNYRfenEiz/n8XCcneYGCetIZOAGbJH5O1U52IHP9BKz/UPL/XJsbbH3QvLi1whkC7M/qsS3J11F2LmtnVzYLm+cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739824134; c=relaxed/simple;
	bh=eAQJIjmRc6cRYOS7iZHgCi6F6+bnu4QY0Vk/tzDvbOM=;
	h=To:Subject:From:Message-Id:Date; b=lKqRQB2CLQHaopnUjaDoHEtGBe9fc4KSXsCnqPYGTrmefYdEk500DdhtCFJMa4vMi9e6gTkCXfdWvtVGcUV+JcRJD4Xlw+TsQMhAwY4kdPqlwcE3Vv4z61P1M/E44GRt9B2284sdydfNvyZH6FrEpR1tYgYDYEgQkMNmcM2KZ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY/n1qDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY/n1qDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA9C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739824133;
	bh=eAQJIjmRc6cRYOS7iZHgCi6F6+bnu4QY0Vk/tzDvbOM=;
	h=To:Subject:From:Date:From;
	b=EY/n1qDiR+HWWHvMyfYuWH8mQV+xZuGT1F6PSk4O+D35ZtIbeoMqQJeXtSnCacihm
	 vrL7Gi3ze5VvUPV198KApHk5RQ1+cIEzHYvvYkoPwm00uCdoymaj2ZayoGc6d4SELr
	 hxYOClQeGFXeEePm37GaViMHz/XPpQ9UbpoaeTwVBnuZtbQoyik+KSj0hW8oWQIWuH
	 lrSGisAJMO30E5t/5DXycARkNjCU+0XsZInGHrlIfd0SuFubaz9+NIHGj/bN1eRHyZ
	 BfwYRKWrXP3LmQDukaW2pdUS9jmcJw4WcSYyD9ntabbZfTB1yMqbfMJ3fRso3ZGvg6
	 klLUjsUgrgDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2CC021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982413357.2336.10246731160626062281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc0143931d6d8c206afb1e977195851202c4a9bc7fac98d94255930d5409679
Date: Mon, 17 Feb 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739824133
