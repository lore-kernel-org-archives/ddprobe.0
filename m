Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F91B35893
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742748594; cv=none; b=J/MjU5xXsQoaInM1JCy2hHaTjjUvTJrQYcEsjZ4HsSwAQz7hjZziTb4enF4wj9lDKuKNdBjUTIMSX2bAm3XveUBrxYrWrviVOREHsgiSOuQ97M9rWqiKF4N8DPL0ZPKabL2IbicclZoyVMxxkm0odq1Ixi2rHIqMZxMuln1bkxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742748594; c=relaxed/simple;
	bh=R31r3ULbyqPUQxbrIDQpEqmsBxsSsud3Gj0H4PEk3tA=;
	h=To:Subject:From:Message-Id:Date; b=X0T3sv1XEiAw0Ija4gp/aF8+ZwqNHZSHsWZq9wZ4jE/M4MM0jskStnkLKC3hR/mo9ev+9XO2cX4C+mSQGeaf+yyAaH9sqKY9AZwHz4lNK2pTOyn64tqsPi4+T7yVqSACbVu1BW7aIQaQ8UVgX6VQ7pQ9Hh2fQZctvjn2f2BpAbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVJgCTrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVJgCTrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82D9C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742748593;
	bh=R31r3ULbyqPUQxbrIDQpEqmsBxsSsud3Gj0H4PEk3tA=;
	h=To:Subject:From:Date:From;
	b=EVJgCTrSyXpbvL7kyrC+72Fh+63PMaBhDXIM32sRmhTj8IqjccH09h06gk9Hg/SbK
	 sLn4T63ydXrQjo6UUq4oTbVkMCWv7cxdoq57DvuTl3GRFHyjek9FwxZkft7VJaAH5W
	 +1PFJlKfTo8pujkL6W4Jtf7Eik495xIbGWzEE9Eaz8eYO3hrnvVsFXdipPv8bLN53w
	 KiErxxq57oHNnvOjb26WS7qMXk7y6oFQ1KNPqX4rorZaymBFS8SzHDDUjSy3q2zYeS
	 5PsgRY1SRk8bNYbrr280GEuRKmrrvyqrhF6YMuP/k7Ud6R8nlCoTq0T4Uk0KwMVFtA
	 8FCv5q/vQTCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D58C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274859358.25282.6552740793306504228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734f4499c0bca868ef4974e3a5f76d1a98bdf0f62166ec4df123259da6682700
Date: Sun, 23 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742748593
