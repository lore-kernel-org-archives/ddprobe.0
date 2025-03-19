Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A616380
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742342995; cv=none; b=qvR1RiW59Dx/BcuS4yQchjmT1g0MxLBZVpTrF3KPQ+mKg4Y9vNKDgzpLSFWU8seODTbQ94FyqLr0ZaxKRBWDfDo+Gx6N9XaskyTk5tXMAg/VUZAAUzQXNsBKFf6PrrX7NCucy7IfhZJWzrfHmg1VmyD4lknfUXbVIQl7oP1p32s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742342995; c=relaxed/simple;
	bh=/8j8wm5KtBVZ4/s7PbWRn54WpKEsrCyQhAsZjLqQssU=;
	h=To:Subject:From:Message-Id:Date; b=A7AFRjVzSGlGfvF8PGTwwCpPMMkpBxR/318fym9/yqozukFIFEbRSHuC74DwrrHa5SiVdeHK8ORou/fmBDFG5pz6EIDov/yakuNrhr54u00TsazNIQBJPHEz70Nf/ovbb7oOs8PpfpbG59QTjhAGMjr7gX4OfmPgY8cOUJ9IE/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQjEQ5wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQjEQ5wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C71C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742342994;
	bh=/8j8wm5KtBVZ4/s7PbWRn54WpKEsrCyQhAsZjLqQssU=;
	h=To:Subject:From:Date:From;
	b=DQjEQ5wbZtcPPSApj8+XxMWiD9WgbBpyHrfj7wHgqYzFnTCa4MZkGrwIh1/tMrl16
	 A+CVv788hTqrA6+5QkyweNVgf30e5e6xbhHOSt1kvZOStP93dS5v3GMtRQl8hnw2wF
	 qOz539FwyDAcadkvRJJCEMBNDxI8q51+dSqOg0yTP9d5m8CqEs7s10TzPESZNQe/4W
	 uUZI6btQv86rdW5322B6E5WGbe1n0wZCfp6w4ggHZ60m+GSeb5aUdPlKE/BjFy0qC7
	 J3i2kC260YJhK8ArSo9UPvIj0/aRh+17iNgyD6T/1no0q92JAxjDi4FWJYwPD7c+8A
	 FKSXkLPc7J3dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB51C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234299358.2963.17404040411855420496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a03569483f39ce3f90a0ea2f7981287f107e0c113c8cd5449c77dcdbe55788
Date: Wed, 19 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742342993
