Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDC314A0B5
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756062594; cv=none; b=uRsqLq7CojtgpAVcayzClpCVIexYIcZ/sfbMFWG33XsKZjH6ZkHDuW8+WtvJFdfqE22r71i9b65M37UHqffmAyAsxGKGdtxdyw+fxdj03u3yvBmGvofJbuSz7waEaJT9M3YqKa+nXLOg+7T59ShziqwOXheabFbRj1Vf/veuq8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756062594; c=relaxed/simple;
	bh=MLAhowsS4Fs5xADLH7NboCBYEtUNz3tnsdp+VEo+EZE=;
	h=To:Subject:From:Message-Id:Date; b=r+yR4LyHLXkFdTYJe274t9hYwdS0fdgm/Uqtf1/mFmLgXmDampsfmTENDag0wY1iYmtHMFen4Yg1OtxC7uk3xv/0jejrgOxM856oGe4+DA2nLwjrwLd+TVyp5s6bQDZ1sFKIQYUhR3TagKJpL5hK2hkxhj392sU2a04YTrEnmVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWYu2FCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWYu2FCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A16C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756062593;
	bh=MLAhowsS4Fs5xADLH7NboCBYEtUNz3tnsdp+VEo+EZE=;
	h=To:Subject:From:Date:From;
	b=uWYu2FCuG/KAQLJ06nJ50YyHgtUcLSFR0qCOJJSo4S0/WIuIagzjxyUnyIvi9DdsI
	 goEEzndgSWwqUwzRtI+QfDobkhuGNxfWFS6ogoiezZmPITAAJFnDqkVyPgZFMXOKi8
	 0A8+v1FbA26Ut9jSmUMX9ecXQNFNqFqsfHCWY+c0Y1BbU/63+93UI51tU8Pxo15Ma7
	 nWi8WDwaDasso/F80ejKjbiJu39fGHrKx4pZHxMu/CXre+PyOXY5NkOFyYjpu9R5X7
	 XInViwmTfhfUQ563qdEQHYp1QkVcDD8kVJ/Ho5tDA6ZHNPa82l4tJ7iX+0NUh8HXMH
	 MBbSVZzRi76eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E5CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606259357.27114.2035109062950142082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b4c9595022bc44158cc982457126efd52b98513ab1441e1d8c745dcac56e71
Date: Sun, 24 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756062593
