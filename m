Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1587B8614C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714411343; cv=none; b=aeBQfFw4oAfhACnqzM1iM2FjWJJE7NuDPPr2Ml0xwXrM1a7oHKJUQ+cwK5Ct3VfeSf0zzaloRoJ7eV9j2r2bkOYRcoD4aGq7Xqr22Xwz46qBGtiesMePuu7AjZ7XFSVSRPzpav+lmU/hiol5Gdr/bWz3XS/9+QZ3D84tgH+MKDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714411343; c=relaxed/simple;
	bh=rP7BYuaOnLIun1VjYK5Aw3uH+3TOnSa8+rDfCCeWRlk=;
	h=To:Subject:From:Message-Id:Date; b=hXDdp7B+iQQjG+snhGhDoTqiKQyu+qehZ9cpFbSo6FhyomRRpu3A0TSugxyVdp8HGMk+7WHD8fxBWPzOAFoJWp+08qigtZdOV2lEl6QfFk+3QkyGzLriffJsQK7LWlFxVJu0DX1WehSQVLPRW87A9IjviHAbOafxgk19t5gZPH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CplUdBrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CplUdBrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC20C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714411342;
	bh=rP7BYuaOnLIun1VjYK5Aw3uH+3TOnSa8+rDfCCeWRlk=;
	h=To:Subject:From:Date:From;
	b=CplUdBrprLwCWPEaQ2sa4MFzTvt7nLoPZiphiDDKh8dc3mu1bgp56TW7BminBPe26
	 ndft0+4sGwX1C/H4AN7U7IBbMbdBM5d1GJ9vzglTlMjnPQCEUe9Ji5mO6QbIdI+obp
	 9PvoU6RzPSKMffnLHGRTAlBcaNoQy40vEemJqQcrzxtAH+Vcqzf6o1cGTHZ+EskTJ2
	 r9QSToyuYy/wRwWkc+vLtZzt+ntC1RJNfPr9bo0UKWYNwW3GExYkzVcvU02B8eunAY
	 Bi0lytmAK8Vowx9wuYGARxwjIVEo9j0nGkuG0yq9vJvRR2BZQhpHUhvEoBk2yv6lIB
	 1ulX7wcZCHBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBE3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441134277.20680.12520249982970098105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a49ba9d285504de8f4b99cd1a44ad1a7e5b62f21a1237cf03388d139df0681a
Date: Mon, 29 Apr 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714411342
