Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA6714A86
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708210097; cv=none; b=Qlj/g02z9j4KdagVEZwaLCEAvrU+j0AKsmBg4ME9QL0BjUvtcPXk6Ea42hD6KoncyYYOpKU/eDWHeNlWSyeZOZkZtQPfErIQsaRM7HXFaUNae9ZrVnSrDYKNjCMvKx5CZYYaPXUj4q59XlEcCUPn9EumOoEjlZQVfIw5qD0r4Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708210097; c=relaxed/simple;
	bh=++xSqFq1SAZiPs5qOu3O+x0Vja6zDP1M7V2xHZLhcOc=;
	h=To:Subject:From:Message-Id:Date; b=hJ3/OZOwbAKoIuisxv4aM4HNI6y0EQAZk5jF53IY8z2B4tVQN/ijMf4ECjVXOXvRJGr6QUZBeRv0WKbvf5wJs/6y/MaZw0hrQ5x2qoJmtCugPEltXnbbi1pnS/zqWKu13a7Qo9m6UHTQwwOILu4C8zpTjqTncsWSC5dKQPWDMno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rizZvo5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rizZvo5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C23CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708210096;
	bh=++xSqFq1SAZiPs5qOu3O+x0Vja6zDP1M7V2xHZLhcOc=;
	h=To:Subject:From:Date:From;
	b=rizZvo5v5xv7VnT1e6mOLWafvKi90qkxsc3OwLNhfewyAhQcpB8Jn+0T/jdLOdF5s
	 kzguiuLGYLfgatA64+6AVpqdrMcMCHlVZ+YDv6k2mD5NC1pEJ/sw268GEYaW+Ues+4
	 YSsXSSOhCevo25sqIs2A3dDckfshMa85dLN9hIlz8U2Avop1gxvzJvM2EW+XfFdFGe
	 QD7V+eT5qGg/ydQ8ofiuN2SyIpXw39tE9Ut3gvuqCaVZbNrFUQD4pn36BlDsJQYhYS
	 OZEO+EI28DVPWAgvDQm0bM00qAq00eSN2nFTljrTljvsjhJ25LDYiiCVlXzWkI++hF
	 /2yf3r8Wtq9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B27C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170821009637.28012.998887009020135266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7d206c677831ff6360aaeab49a4bc19481a70dfac04a7b13bf09123a537c1b
Date: Sat, 17 Feb 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708210096
