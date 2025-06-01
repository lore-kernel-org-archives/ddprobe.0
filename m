Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE5E70814
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748761795; cv=none; b=UW2mB18aE8J2i8e226PCtXBkeGhj+W5Rl9xoluklPJVfFMTY02+tV5rAPQydi8ltn2XtLsTdbRA/EtUgLTVf7dFygbDKZsxBW8FUgiqcPnxp+u5Wd+QOa0OprOkYfBRBYHfiz2LmtB7h11nZNYlhOiHoioCcKdw2thf9FbWCZBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748761795; c=relaxed/simple;
	bh=xo09uru39M2p15Puj7jrGrsxMTm2/fBTsawvNIupuZo=;
	h=To:Subject:From:Message-Id:Date; b=Y3KLveEW0TyyRyUcje/vN+2KKOcG4pEGqrRxHXwcvblElFJA+HZIQEuCDjpyZvi543hCdknwaKs1NWo/u03UuE/d8Uy2+/GADWDn+9DrVbuhbOo+7xNNt60rZpyVWvSiIKzI+f2ae26szlnGysEPxKpk8tYbcBXfNPkpp9+aIQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMMol2aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMMol2aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748761793;
	bh=xo09uru39M2p15Puj7jrGrsxMTm2/fBTsawvNIupuZo=;
	h=To:Subject:From:Date:From;
	b=LMMol2aLAhNq0IrwGt5IalQ2+d6y4bd4+adLDnNorXQjVbZiW62WE2dHMAhsZMD++
	 Sq6qkQvNGQDk5iT8xYYjOCa5jojwrLtRVkdZZ+PCsWet9ghTbVPFEtmvWBKJ+S68bV
	 FkgL021p9fYp4V3GgMs5MkOkXej6dXWszB/qHMfFkc0jmLGtdCgkfONhHtBo0SeYkS
	 wU0qqKtiWX+f271wAJCLfbtu2xtwBQpctD7QGq6NjMPEYcs1QiY5six0tvwFWN3qGZ
	 TB+abRiwBKM70+9sQ0FSfU7D5/9goy6h/QYtwt1gu4hB7hXPvVR167uhgNM5WM37q0
	 V3XAhlMIe03FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E17C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876179357.12908.13338797661464233728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d6e521476e2e469f386eb019dc32fbc6478052fac884313b29d15c990b6df6
Date: Sun, 01 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748761793
