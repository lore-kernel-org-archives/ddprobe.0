Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF32FFDCC
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782394054; cv=none; b=CEgHd6yyLCR9ITHCrnuQfEcGhQG7aGpKVBCGhl33VAou5OjhgTNXYyT3AURizgQwsKZLZT7tBiOkNJUOUEwZO4lcy/0Nwc5Tzi29RusPlYcozObd7iOlRyeAGzh0o7Zx4Dvz4vwPM8P4j0DMsNkwyppmhC/94z4CaCRTe4Juo5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782394054; c=relaxed/simple;
	bh=APY53uTZYX8s8s0bh2fjfKK2+r+sqPB+9Q96dWp0c9o=;
	h=To:Subject:From:Message-Id:Date; b=YhiAHXYZaTHIbK+R1x+yDTAfPYVwsaJTanoDSrXsGKxYHZSPES0EmAcM9w8BOYaZeGe3sykFJ9/1n4Zt49+iWqPNusKDneg5bYx6dAo9z7RYP2iRnUl9lly4bfS2IiDm3FgX7P9h21HxZ7MGL8fDYXw+lJ2XIyHB8SwXs3oxW5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu+wtIbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu+wtIbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F2BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782394053;
	bh=APY53uTZYX8s8s0bh2fjfKK2+r+sqPB+9Q96dWp0c9o=;
	h=To:Subject:From:Date:From;
	b=tu+wtIbm2o57iy1Nb5AYwbWJYKwMFFxKXCdaqJ3t880LexGSOwa2ch0ydlxY9uHhz
	 PptrN+Dcd3PfKJbdcCvSYkxZY7R/OWqE05QdX30Rtf8qWnEjYcn4dmlG7kyQjIRcTH
	 t2Z+ZijMYTAYV43Py1xXPG84V7/1phrgP9ztZr9VQL67D9I0wIYeAMTOKCC5xd6nUc
	 LbpT/cXlJMblaA3P5zPCNIll7hIthSkIaNKmAsZewO7OBlFMG79K7wJXZLU/oW50yG
	 CFDHdBqyQB+2I6nATpiD3QSgSl+U9eLZQBCixsAyw6Dkv05ogUSaf82XgjexYJJxxa
	 h8f/Ta1UqwszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB03CCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239405369.4716.16090624504976307037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5612380bec1644fd8b30f505a282ea11ff08498adb50fa1558246ce3682e01c4
Date: Thu, 25 Jun 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782394053
