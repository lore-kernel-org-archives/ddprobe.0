Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E711119F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711839497; cv=none; b=WlK+AyTintuAni8ELeQPmpVHjmis4NsL+EmhQRCB6s4rICOZisl4z4C2azmhsFOBtLq/3S6uiH3u3C5NtkS8XmeT2b0STticgBNKTiwec1eFCLrltghlVZRrkUj3w86hBBFRUADQJQXZh0aQ0QKQq1BCaZb/ED0dYzVMLT4tP24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711839497; c=relaxed/simple;
	bh=vpZ8Z4ZNr8m/3AY25Ru39+5Qd9XBW5FU3gEMv8ia2ug=;
	h=To:Subject:From:Message-Id:Date; b=g3kaCVSIcPzZhzM1Xlrs5aqDud4qTLaolaV7Ky3covCYGULqQXqU40iZGsagdO9SbQuIDdcTxrOOez6A2eRlzFNav4SObDrFPNyet0saiX6kKL1de25Znjo2IAeHuV4OPw84zVwIx9l6lnJAKnioFyNSqg6NpIC+W2tXw/aTDw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSAvBJFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSAvBJFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 833E1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711839496;
	bh=vpZ8Z4ZNr8m/3AY25Ru39+5Qd9XBW5FU3gEMv8ia2ug=;
	h=To:Subject:From:Date:From;
	b=iSAvBJFkTf3T8o7XvKJJ1KVnfj3znJv7+k/WJ3dp/y5IEXp15hBB88odqaQR4CHQT
	 Yx/EpcPCOQJxOFpR1JsY7r8Idrx/KZN9mM7pCI3Za6gMpZ8BbkRwg4brC9AAcAhieQ
	 0NDkzsCuBqXkVgkVJMH63xW09B8CVK4p/gKjhUbzKtGOB9kCzy9dYBiUWK1XxUm5XT
	 KRGcSwX6uqA4CglPYgBpPCBVHvD7tlTgEBtAaMVmmFHQu9OgiS8rn+RBzEvLqSCy+u
	 Obg8uoJSMHF0ds/kdxtzA0lnH8cZigX24kWwpaIcTQ0zBVhsIBaDTZJcNw4sfbG55j
	 BRJJq4vvaxP5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D551C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183949641.7817.4165359777124736579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0934d00403c20e6e95f43fbffbe169cf4e942d6f7664c56c5fcd32ba9fc310
Date: Sat, 30 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711839496
