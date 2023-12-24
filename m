Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D9ACA64
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8OLZG5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835E4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703440696;
	bh=MJzafO8BKchScPDYZHNGz2bNTzoLhnHTYWt7Xi1BB+g=;
	h=To:Subject:From:Date:From;
	b=G8OLZG5WZ1cWWPHusdjfK5jXMfF2EH3iVSp2yUHeNMrRxsBTDcOI1zXFVYx47vsvg
	 +MvNOLoJapHKmrjbPJPQt+eNgxIyksjRrMmfd/hxefAsJEWZgWtUHIqA9No0xC30qJ
	 L38xC3fDw1VE4B34ZsezXZ9w427OgSRIblbERfpsAeIfVNGve+OKHiDl+sVurjy+kR
	 ixTKUBfmt+Frhif6MRBToCxZo9SJKQgFLb4tin4cmslflkdLWWwC0nB6rVNmkvJ84f
	 Vy/DogUGiUfFfUPNspHqWvLdwfd7jtSUXCJ5W6On5d+xnhTAXTPctMwgivf2yFhQHW
	 dbUiq8h0iv/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677E1C46CD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170344069638.6825.12247754213953809499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccdceb3cd2c53d76fc00bd315118d5d6293da438a02e5dfc9d2cb45c36e80a3
Date: Sun, 24 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703440696
