Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFDF171C9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747348794; cv=none; b=Xpi6ckOcfwwGVjU93j8Ps/Z0Z+2eNd9K6YkQCRbzbebOvs/+eRzbI9aLCbem8chRBQ9rrlZUwOFMfzKx5S3oNN3O/lEc21Mnf6edzQxCCRAZykfikJ1y1CNrHNr/uFzV9VKLpJfmbLwV6GMnWsZmVwI7uQcTR4LyivpOK/J8Irs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747348794; c=relaxed/simple;
	bh=ufBNZ6vA5nN/FHM6pyLR+wotb+sQrAvZv3573cKdwSI=;
	h=To:Subject:From:Message-Id:Date; b=C7EDs0KarUq6uJXoG6V2132AouBeGvdD6CXCGhlykdnIUABd7Ya+Sd+uI47DyrPdqzwndN/36N00PYgIIDePSckESao9DFUCPmqs5dlm3Vw6z23vPyppLhMqdSgbkI6BBor4IiZ/ylUe6Cc9uUIsSwkPxEyKW6SBW6rFQM3I2Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Akl+c/eB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Akl+c/eB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E20C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747348793;
	bh=ufBNZ6vA5nN/FHM6pyLR+wotb+sQrAvZv3573cKdwSI=;
	h=To:Subject:From:Date:From;
	b=Akl+c/eB/07IU+sj3ghTLkRdQ9pMjmrMNyGt5N7aF5pagFKKf4oJKkShrynuQz3To
	 DUCuqB/nI8DEQhy8FpdIZNQBvWotkI+rBp9W0XuMuYCWrvn1TP64bMjxd6lEMx5R3r
	 DfDrV7PshOXzIaZuyoPSGT0eTrC77zx/X36IMXTQ4gz+g7hs2agyaIbLDM7E7oO17K
	 imHNVImUAIPkhNbqO0/EEpZ+SzO/dwPoZY87wdmlY6flpgIvxVP/IYE+m82fgjvzHK
	 T6cLbbfkdvQBLm2jE5fpPo9twCR93BGoytQRdsXoRTocOk3Vk+y3uyWkZ5SAA8lPay
	 7JvF6Om7H4YYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71CC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734879357.14684.1835716618679090626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32302d59fed35c90ae1c12887a467c319582a89ee93e89eeecb82c58c1f1af4
Date: Thu, 15 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747348793
