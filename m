Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B82B2857EE
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771475094; cv=none; b=uC7i3h376ntmszRA5U1mwQSSx3ljxzmeoqjsbAdwH/k2DOYzRhNlmVIoA2OPndyef+KZqjdvnZ9AQcjQr6NaANFY2Bqnt8sVe+Wo5r1Fyil5bohrjlXFiIoJLBSdvreb9nvHWTgQ30BOJ/KhcayMH5fpjAv2P+IVKBLnERbcUWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771475094; c=relaxed/simple;
	bh=6geAQDC/b0zuSfqS3gfQnzd7dQz/HKhXRlSRcMRmBTY=;
	h=To:Subject:From:Message-Id:Date; b=Uno+YnlR/puNbn6R/+4WNZnSXvYBSfhBgRX5WPHDbhEkCkbBgIIv+dFV4mOLEv/rm88KrlTvpPD90sGfSF44KOyE/CiqeorhjVFZws5LVx/XiCHX6HxG84+q3JpyIVi0OcFEkJeYUcnqYO0FzG5UQmjeqTikki6TlZsS3j8ukRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeMUCy0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeMUCy0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D42C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771475093;
	bh=6geAQDC/b0zuSfqS3gfQnzd7dQz/HKhXRlSRcMRmBTY=;
	h=To:Subject:From:Date:From;
	b=GeMUCy0vGmB892RnVeLl5297TWUPUpKwb79cBvFSYJeeUmGwcIBQ8pvolDfYBXkgt
	 2FYkgI9J7nb7tcpYsmHIoPI5WDzeqZjHaL2vTeL2MLa1f2FKUd8QBGkuGT7FazroM3
	 TWP4D0meJgP/vDAI/xANI+5sxXovGuGSVIhouxBq/0rcO7IkUL/pQRvQdCDoj6GrBu
	 CUQERFVk9gRbhGQ6Re7qM8QqzYqe+Eu5YUoY0rVRViaKRNkw1KA4roQPMEpPTuK0U3
	 aGs86ews8G86GgDfP85w39bhq5Zi8ZFQBurGtAR/6bdyKgO7pl9ye1liMdBlrdk8VP
	 aRK3qVGsYOzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC90CE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147509363.8879.9507845974759707509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6224a556c55f58949474c849bf60fe873feca60d2aa994de3a610fd1804b28
Date: Thu, 19 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771475093
