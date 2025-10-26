Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309B12FFF85
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761520794; cv=none; b=nCHbwklG4GoJLY/fgS/okk8gaBkcSq4Y+uDnH/vb7J/kXdZAmKcQuUxHPmQoUZFlQ5iHKiIvdYHn6E6/YBiPJMR6TUYPPA1EDhr4miITBswODPr6VwZPJaNYnCFgY+R48m3K11iJ5kgYBpelRUwdOq0Tjko8/KXDRSFOy4ce03M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761520794; c=relaxed/simple;
	bh=MFO2tmXRU1lYH6731NrjQ5aecgYpMpPaqz2iUBrxqe4=;
	h=To:Subject:From:Message-Id:Date; b=T3f2PdK3ATdnvULt2E3nN4PtrzeOGyrhpf3+3hqLs9sVrxe2ESp68BpCkL4e2r78JBVxy/R5P28zAIvlIKb0omDLi9BP3Yz2ssPBInNK5e8ARJ7LY+88LhYrkQdOZHpjgxoUYu7U+gF+KhI2VmAqbuA7nWHmOO1tgBqOHjBWDtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICkh4qRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICkh4qRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FEDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761520793;
	bh=MFO2tmXRU1lYH6731NrjQ5aecgYpMpPaqz2iUBrxqe4=;
	h=To:Subject:From:Date:From;
	b=ICkh4qRy1+RrzVqwfzqWRJtOPcckeOZPydK+qKRyykyhT1Pv0sDWOlD9oVGpvUmAD
	 EfIm5sC9BsEuVEj/ncfzqRVPWRwTP42ToIkI+q1SQBGsnRUcWyr4+UuRsFp0s2FCok
	 DqNIYfhvq+vsD8XF/ToSTiOaQ0S/wiaMyYbI54sM7XLj9CtEzCua7FK9N+d++4O7ym
	 zaNmqPD5EG571XW3GzVmUeiM7u4C7rgBcZ45NTkac3TNyW8QNROHfOgngBGmTx5V0u
	 ulVFRIVuMUNWp4SwVAUqdmEvd5uEvoP/m+m3xOfOngLhlI5OWUfaOqk2No8wX/OhJI
	 neBSXw1fLRDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91249CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152079357.29552.15731992485530195381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fe27807605651848c81b17f25ebf1a412d39bf00c976c9b5bb66ab21381145
Date: Sun, 26 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761520793
