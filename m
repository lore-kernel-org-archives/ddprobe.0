Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361E621019C
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757717994; cv=none; b=XEWj3Kr5/GMuMaBFIJ5QiSUP1cNeiYAVF6TcUWlI9FJ7MVSJZEllQ9vGEOVkY7k7TJbGEK6xI5PaGzZukwb25lFlQfxri5zU1OlC8LY71qld+avo+7JsQLXRhhJ6gxsfmPCQryFmExjyLs/0IAjuKyrUrg5l6yr915lbQtC1SjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757717994; c=relaxed/simple;
	bh=pKq4sGHL7c0IR077D47MQTgDxFJ2Rr6w8qz50+b2/N8=;
	h=To:Subject:From:Message-Id:Date; b=gwqxJYuE/fvPMXGbVUlFIDA0TytrVlUsdB0PW5nWfCthEund7LrIKHD+7lEsRqhwtPwjdy7tJlOu99PXUykr+e6ipfyqZpfjUMv18B/mRXzC1rxJxjl57Sn7CdmlN3A1D1AfLl07fOBDozzhRMOHrxThJzHsUZhE1pLTNV5ya7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvYKSBBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvYKSBBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A644DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757717993;
	bh=pKq4sGHL7c0IR077D47MQTgDxFJ2Rr6w8qz50+b2/N8=;
	h=To:Subject:From:Date:From;
	b=MvYKSBBwePYyg1ze3oV+C3XnmCBrGWr+OtzSHDHdURtE6mjkOOEvF2+lycMFziEKq
	 9GmDY9QHtiHraq3U0EObtEWCy0j6WZG/THrDv+WUCve6Xp3YJIRIzbH9Jn6b5BWtK9
	 f8Zd2m/WLMg0qDZcH9Qbmz2RvQF2Ah3pJJbi77uIqFQgZRubPGbv3vhFFzEPJU3sBL
	 6S8IhdzushWZthAmHYhrpZ6bFdbSTlhbK+NySrwLrEBHvaKdxXT/HSTBS3USDI8dUx
	 so0BkeBRB5gwJW46NAFX22/yIe9oQnGXREfdzaS1SccvXoI9k2oUXAkJw0i+5NXOsr
	 tvQxf5VPBGWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDBCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771799359.14940.11627662734486063416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec5190442af3134db779c9d81c788098fad16ef0814c4b0bc3529f92aee50f3
Date: Fri, 12 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757717993
