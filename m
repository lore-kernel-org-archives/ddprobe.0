Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1BE2FBE02
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761240594; cv=none; b=npYNpkqDBT5lgZmFtxFkQOt+JZCrmd4RLhA6EgmRVnVs0LHDsNjkmhb8Jmkt2cH2MXmDYKJrAYFMi0DfIbBKksf3+TJK+g/28jpi8H5qUuoYjc33R+Q/rwucx7rvwiTiGIgbGvUYzhUw0ZLFSXDlgP+CRY4oIyU2/jpGgX1Kuuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761240594; c=relaxed/simple;
	bh=Y1W0UdfSonSJ0n53VSlcxMZANT0aS/ir/hRMnIJgV48=;
	h=To:Subject:From:Message-Id:Date; b=nenmFA8tmS11d5EC9g8KVi54XkxfoKn9whPhxRhEcNoXsAESnYbz8ZRQOzbkZze8nWHcryco/WH9G3PtBpsMlB7TgOy4kKue/fEAaaICbK0zcN3GA6ADiu4zO8TRo0P/CtBuAyfdYSmX3aDEWppdxCAx63cDlKC8/PRUmw6YreA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpiFP5wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpiFP5wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF36C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761240593;
	bh=Y1W0UdfSonSJ0n53VSlcxMZANT0aS/ir/hRMnIJgV48=;
	h=To:Subject:From:Date:From;
	b=GpiFP5wX2ee06+5GYHGK9p1EzJ+k+9uohGADS7sCoQM/tHzQomEW/iXDRJpumYFEK
	 4uGg2FpEEjt1p+dFllUfpj4wb4U8Ox11Rr7/DBlolcmxPbbQMq2w1VGFUFw8GW0kSt
	 5Ex2fFMSWPQ996JdOOK+0jJrntOy3ib+/2kIOhPgDCac1tQHob8zw3MhBM4FwMDnHu
	 fUTbX7q+urTqRXUvgKzpuA9ZnKlXJ5sh3YedFOBINSJ1cFQEMC61cXgxBzJwLYcmrf
	 YkMEsj195M7W2WQBjOk89iIXgDwYST4E8ncorjl5AzuYB9CqSlO5AxyK//VBEMZIdS
	 83Fg0gJJWOpBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D4CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124059359.11256.14028625295184123313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445bd7e73732df303b7e080132f806dda2cca225131ec890f793368d281c723e
Date: Thu, 23 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761240593
