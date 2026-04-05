Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396FB25A359
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775410534; cv=none; b=hffcs2hKoXwAh6h8W0feeF+hMKeU1lPxqV9CW8N3yL6GRi8kqDp4B/Gs8RyIF1HBUJn8wJ3TbhKBuX02SQj/EgZjQ3Pq+VtDGVmHoQDwn961/Xu5/ezRZzONautaaXKk6BLO3kzX3O0KoTAhb3yp4IEZqnXO3w5fKlZDptxDxas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775410534; c=relaxed/simple;
	bh=GjXPr+UNKSzsbddsOgqyHizgY3soBNAmZUlhP1QoaUQ=;
	h=To:Subject:From:Message-Id:Date; b=J+uik+xAuApm4EF9iVdPnYmY2nXUcz6U3okuYgjhi3bVgbmzyT562CzBUFDCumBYF05+UzFmais4TuPYBPIGcpDRrQa4xOxn13Fvi1KVu8wgipvv6//ZqEIx3Y7CosZXew9MZlN1nwhRGv7JTAxQ6XikNpm8hsEaL0Wnwq1vo+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG9W+3s3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG9W+3s3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B4BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775410533;
	bh=GjXPr+UNKSzsbddsOgqyHizgY3soBNAmZUlhP1QoaUQ=;
	h=To:Subject:From:Date:From;
	b=AG9W+3s3tCYNaqp84S+V4OpYXfbNnltyco1QhxLNtE/X1R5SoRuyv4QbvOmDQ2omk
	 +Ezk18rRIPvUwnc341C5WGl4FWb+SeT2z34QlBAnRIVvpVS9hujQLm7OxngL8p11CJ
	 hznwZoHc4kp/0qbFbC4w+X1HhicCWeHgI5eaTZ7wkXFdWeZXqzl7/h44to2wueRSLJ
	 qQWSoltDt126Vbp6SlYYbBkfz5inlDOsCCYaWvsEkPIYfw/lwK6fdHPIl5kYIuAt3V
	 tvYSVVHM7SyKcSUnWWtBMrsF3YuaEkXiFL9PmBqcfZccRKjXyGRrGNfQoaCtZHg3HV
	 D+KL8Md7h0bBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22B4E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541053369.24393.15225518720199444679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2c0fecb5c20c46850cfd740ad1b084d9f7b6db8b96c7f676a8a07e95c64c25
Date: Sun, 05 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775410533
