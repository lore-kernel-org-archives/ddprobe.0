Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651B29405
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759520994; cv=none; b=b+y5ZYpo9aCaXq2ZzGQZpro5gjU/rXjNIjy1qLq578W2HHm5HIX54D0oN1YJ3c0Eq0e3MBQ6ozYSnq6667P8fM836wFJOfNBpnb2wlComYYQRpt9qzll9ew4W5q2ZFClLUBHNKozggyIhgof9Q0SvXiukaKpvZGmDDVJI2/ybcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759520994; c=relaxed/simple;
	bh=Shh1JSi5JasTLKloe3AeKanRTwf1Gk8ZWH4zJhXttqE=;
	h=To:Subject:From:Message-Id:Date; b=ljyNv2TN0jJyTyA52cz7NIrZsvoD+SbS2+aY799vhFxAk3JU0P3fZOIJWobS95hiH/H9G+byVWC3w9bHjHn5FB68OD36t+PjXpj3L12fsMvZQXOro8DgAs6SqAa3X8nx/HNWz5LELPclTG3tzty2sP+xKGxzd+p8CalVtZlnFvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6tx+ZIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6tx+ZIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB17C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759520993;
	bh=Shh1JSi5JasTLKloe3AeKanRTwf1Gk8ZWH4zJhXttqE=;
	h=To:Subject:From:Date:From;
	b=U6tx+ZIKOuqPbmMT3AuZtG35UMPJq2dqnu4+9NNWi7rDfYffTfRPj2IlOi0QKTnJS
	 fM/5W2w0gW773dQSjwxDcBaIzEiUk/cYmk80yTfinEI8Jhv/JU2tK0e7NRW9nm9C0f
	 xfq0v/JRV2kK2ufiSo7llSuanV54oVLHkypl3g2Pz/CRImopVhEIXtCjx736BXzJss
	 r9MmKoDvE/TgBNUj2ZFwdPpP2uk11FbWZsxyieHqC6xiq67gvg5kNfIw0+0w8ZwDnp
	 883ETPvLNlx+QPLX0ydxsDx1WOBKPiI+Hs/uZm09y/iNhDuQPYsmeVgoq2eqrvBz+P
	 mwbtSqDDIFlXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90874CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952099358.26243.13525578735036569785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2354a9fbbcfc95d16117f0eb085b59cadbfa43029445cc31304513fd31f9e177
Date: Fri, 03 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759520993
