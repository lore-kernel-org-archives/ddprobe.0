Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348DE1CAA78
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782383854; cv=none; b=EM2Hc3Z2GCaqJsJIbnn53hnAH4eIubPoAYbS9O+WQthv6UrRJVhW6QjxFWaGshT21OyM7ZRtZ5A/13kafJYlqfmG7NoskOnZUuBt8W01FURucghzI/rwXyCqjHkbApVjZ9NDoT7AtybeQ6iq1A9qTK6NkQ9LjYNDz1MqPEkzcAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782383854; c=relaxed/simple;
	bh=yObqv16A6wKMx2yTP7Ew6A1GtG5qpPxvMXDQEDGj+x0=;
	h=To:Subject:From:Message-Id:Date; b=bMWFXFQ0V5Ziv0UP0HI8pu4MECRpIFcv66HcRXq22UZNhG5r4tjynqQ5TfLJJAyF6xcoPkZt3BkL7+9isgsz6xtq3Rml9Uu77/9yuZHLlxgG+a0ek3ysHbWmoMU/iVZPLfMGcTePgiRvtAg2/58btyj53uLl13NqKrwN5ZrrflM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBq+LiIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBq+LiIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E3DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782383853;
	bh=yObqv16A6wKMx2yTP7Ew6A1GtG5qpPxvMXDQEDGj+x0=;
	h=To:Subject:From:Date:From;
	b=cBq+LiIOO7hED1UwNJnk5/YTv40wyVTk9FMMpofIJIslxMg8jrFwvhM7DBv7Qitsy
	 gBNJIMcXbEmzYgk5DgTU4bxeJCbsbAiiZS85CrsciQ1f9ojmE4R10Nq3qk2lfM4dNB
	 HBHOL1UUQ6FJdLYLSoG6k2KW1J89fd0vUH+MM6BYlt7OcSOY6ILCJPRjdBqQGgqzEx
	 FfYDV2k5WwO36UW4FKFhrwBaH7uh9e6JfzSJQbnYOta4bS7l4ykQCgWSVndeV0EZpl
	 kD12RU2DW0VzbxQQzt+V9QB8YzrCXLvO5idSpDqMtsuus6G7upDFapck+08Dhfcap1
	 Ss8O3BcOsLYUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6434CDE008
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238385373.426.6242269851017527162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fe0c06b8f4a5d1c49286cadb33dcc3d513363471b6b3b54e954c5b8cd186ec
Date: Thu, 25 Jun 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782383853
