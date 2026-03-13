Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D07D39021B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773412494; cv=none; b=flH/sLivcUpaFiTl4njIXHzbyHMu+yXNnhQbFCkn+4+fg2zLadNeN/m3b3P17HgIJF0NZp013/nmdXr0lkjvuU7qdsB2487MFO19v0YDxUZ+p7W08nVXHrrS3tLjcfIxrMDnadvBv89e3+zkgsNNjDq8+Opkw5YRqTYoo19NyvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773412494; c=relaxed/simple;
	bh=oe9amnTC2nRVlVWsphKDNHgnLAmbBOdgsFtQpQkjVeo=;
	h=To:Subject:From:Message-Id:Date; b=R4Lli1lYSdN5U7mA0k3wPz0q7p69RtoWnhsAnDeJZR0/uZVN1Pad2mSK23Bd6FNZ8BaQT9/vZTVE0atFtkNWqOQO+dUAitK4PA8sVpEZ0hkPv0O2sYo2d9FnN1t0fT0CyyxJ5sXlFapEwGrM7MG7px1/mw1cPe7NVXl0L3ZAOPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxAu/VbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxAu/VbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F019C19425
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773412493;
	bh=oe9amnTC2nRVlVWsphKDNHgnLAmbBOdgsFtQpQkjVeo=;
	h=To:Subject:From:Date:From;
	b=IxAu/VbVP7UZ9UPTEjb1JYb06ofaB93qrIkUcH+9Zpb+Tv8kOEWrNVlTjXB58Msaa
	 goc6R2FKucfnY49BbxYaLI6wWk9z+ix4BwXsP1ZANdM12eecQ+LbP87w06E3Trx03H
	 /w8kTxMFm2muWpRvbc0g575rDum98lPNXA6P78+BZyNtFGlPPR6vpHgAEaxsi7bbuw
	 czQH2pqRqZd4+n5Krp5L5GIKhOg9/ItZBO5pBD8nEsE9xm2ZYf8Al6y6paYjcQXvuy
	 JiRjmu6Gz48FyePDx/jynuli1nUAd9wBfzJ/Xe6HmAy5qFl9nF2WVFZy0MmtwO0YHg
	 4yiktJSLO1xDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032D105F7AE
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341249358.12626.863102113280356515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2232312b7b32b9cb4b447a638d813b1b2a283450ff42d87caa80c19900a8303
Date: Fri, 13 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773412493
