Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366673B47E5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774280694; cv=none; b=h21LhewTe5guIphz7M1hdJRRmSfAWpovSKvNrA2l/Lu+U+DITY9M/V4fdl1S0usU7Efn4n0vPFFgS1OklG6vTZFIeeJsy3amVlRl9HczCuiVfU8Nzhf50Lm1tG9Lf3nnHUmrU788MtdcVUqAQH4TyZgg1k989YxnPb9s9vtoXZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774280694; c=relaxed/simple;
	bh=ydfpdwv+Lg7VF7uZrz1phWo+1quaSibkgmToyVFgNdA=;
	h=To:Subject:From:Message-Id:Date; b=pKOUpLZfw1aLzdIAuvC3oC1X5WQ+GnqC1Viu+ROu+AGDyH/U2E0nt05HU/UdNHtfHiAdASJsQUPFkCq/iyt0aLcn+39xpTEwg0twM1hl/9eCNfMUJm/RX+zjFZBhyHqxLIRONwA/kPhvHiiSqObOyydePVFx4YX+b0UOZYJ7sMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IilXBlk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IilXBlk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D65C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774280693;
	bh=ydfpdwv+Lg7VF7uZrz1phWo+1quaSibkgmToyVFgNdA=;
	h=To:Subject:From:Date:From;
	b=IilXBlk8rw137z+zzMy5JAdH5diepnILoxU2tUICEwH5eNKIpVCXi8dUXK2EYF7xK
	 SplffZefYyJoe3Emq0Ovl3cep4yqsfVPKFJybdwnVmjR4M2p6a4aexslEzfbLe8X0J
	 aqmPgrlimK+pN2V5rj/jgJLNsnmAoVUGcs2nRPrPc0P20WHbSOdlIqy8EUeV9Vz9PS
	 Eu0Pw/5XZnNvZLz5nVw4M6Zu98jIHSN+HIbRL4mH+WZaJV/jSyWpX9L1RGNoVq42JQ
	 60475r+R0UxTu8o1zpMDjd0ZQQQa2alv0FjvToh5snR4mXHUF8kBNJAWWS3+qeedxi
	 2uoAinYXsdL0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9838EF46139
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428069361.18389.16927693918780674269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56491c2dcde6adb19d101c797ef470d532d27aa40206d9f6e6359a3b58f1c475
Date: Mon, 23 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774280693
