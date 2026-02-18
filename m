Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6A81E3DE5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771374894; cv=none; b=o2YRmHyP71BjnPb/D0czgwoMxyeKLhfHGuFKh2Mr60Q4oYVLrd5SY/c/m2K1zwgZp/lYY8Ev7xOxyjY57Zz+Z9Ipi+RJXu8qnsQRs0KZ0TJvVTtEDH7Yv1c8lHfMXqWru5/UpsSdt4vHAld4rHmBY3eGeB13YxLOegl7EwV6gPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771374894; c=relaxed/simple;
	bh=uBq0Gf7huurAGTyxX/cH6dc6oXn8td+EnqaFMAbHTyw=;
	h=To:Subject:From:Message-Id:Date; b=M4lW9cEccmkz1kzryWx/DPsOZ2GjcuKUrMJ5v/BkwbT7NY/njoBJgeda9ZRUshW9pIAu4jL3MDUcAX+zcUraBA5TzVCsgOG09xzghbXxdQlV64dG/hZ2HwlmUNRrdk3UaSBp7gAvNfkIxrCGqFDwdOCWQ3Ws5AgD1CJwfIJpf1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMvIqjnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMvIqjnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEB9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771374893;
	bh=uBq0Gf7huurAGTyxX/cH6dc6oXn8td+EnqaFMAbHTyw=;
	h=To:Subject:From:Date:From;
	b=OMvIqjnpaQMZ6uauNop6O3HvqZwkeEayObwmbUwvOXzWgqt1HBOLttu0amTZfdsyV
	 T4PyAdsHSCEwa0YAtNUJA2jpcA2ezQWX9G80sXPBcUGagldXnzeuY3Rj82N+/ldgIi
	 g6N0ISih1zjLVT7rSaYW3hNME1KCXNHFzVqYpdIUF7IRTm5wis1KRHU/zgdziH5I0z
	 KwpXPmuHayO+4VT5z0NSr3OR792q5PpCRoMcEgU9OGEBDf3KDX0k2aumClXWVjcBH6
	 hS6vTYKF+4ezuszAGzOqKHOAk7+b+9ATH6CyK7URiAdyi/ji7r+SbrQMOzR7YjGTqC
	 rqFASUJCKvNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EACEE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137489360.2666.7289357604417578273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5fe16949c76760fda2cf16d19ccce6e756f91afd8a60db1906344529c78694
Date: Wed, 18 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771374893
