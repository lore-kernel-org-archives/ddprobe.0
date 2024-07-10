Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D9B142E67
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720650443; cv=none; b=Cyns/JlS9Uj5ICx2JkcMm2SAv4i/aN0JXL4sT+wc+lvZNlwcYd/x7hky+tMDSFlARjw/w/6aEhJPDZCkP7tuJeVauuk6DwZ29nSWvR14PUPissDZOSPZjmSsXidhaOfXu7ZMlQ12KVk/cJ4zNGtJqnP+EokoazOtT9uSAImXIVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720650443; c=relaxed/simple;
	bh=3z7A/qw3fNjCWdKUxEbRxBN8QTfEZuhmVwjnbQ4o07U=;
	h=To:Subject:From:Message-Id:Date; b=FcKFAVBiSVS2fBSxkraxDD2Utk5vEN1zilagUQ9yUY+Zr3Of3K5qF3dHLZlNT8bgOozhfTIo27N4CJJdn4h1youGNYo5+iIoNf8q1UmYtNxqzNQyegPcfl7qYmB4FfyOXZKw7SmPdcFOD8hOxYwvrPXqACnLMPOutHvo572a/Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA4qiS2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA4qiS2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06CAC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720650442;
	bh=3z7A/qw3fNjCWdKUxEbRxBN8QTfEZuhmVwjnbQ4o07U=;
	h=To:Subject:From:Date:From;
	b=XA4qiS2pEXDyKFWMd+sbRh+vYSPyN9qTcSzJDamYilt4ItsJ8ExUd9En0z65qfOCO
	 F0q7xDrOTO0vugWLfqwWi/0F8mg3CTcUcf0UM1s61RYcu9QaBP/8i8WHGoW/Mfr2D0
	 0LTp+SpAdNKMzz0Ps3cROIXKJicRVODa695pz2uB4mnjpB4t3U62qIxS3VIbaxV6gJ
	 7vvJhqrej6pD1R4YpdQjAMe0GU0r41eLWqTk7TaJpPlkEb4hxs+9Yxje/MiHvLKhZT
	 5VOx/0c3zy9qP3ZF5PuOZ2MI/A/MQh60jbboNfa7ikZaXXdq0MjPAaBrx2EoHAgwR0
	 82VVzrlHH7Hbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC54AC3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065044276.9706.16010379552122507274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5266235335fd06866210fb266967cf43b350460e6609ab46cf22625144eca5a4
Date: Wed, 10 Jul 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720650442
