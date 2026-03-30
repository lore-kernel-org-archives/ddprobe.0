Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2601B33B97B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774902294; cv=none; b=uqTvlR116dPY9nTc3Bxv5mwj3NjGzXLa3rnl9VxKSbDQcLxg1kAhqwybvF7BmToOZbZ3lc5Sax9FrpQfTZjF63bn9iS0GzTLsgTkv0MJzwxij8sM9UuoxNQ/xlO/HTXG376PbtsE60W23IILLbnc88vaNZuqkJvRxQ9GBmRkSaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774902294; c=relaxed/simple;
	bh=VtjIuYWRZNAS9yraA7KcHpa1cEYvIZ1snQff9DrCKxE=;
	h=To:Subject:From:Message-Id:Date; b=KZnN2Mc9JE0VSWgRZ12MhGSxvt64sQvugZNU8epY58tk247gQBD5QEBrAGJhtRuM6dj2wGLNX64EWkKDkgVkGHfoNNYSz5e7sI+EqCqc14mKCGGYqF1ZYMTf1fn3ycvCWVGSDpigfUe7GzchDOIs/CB9zIJ6kZ11ujo6AgO/x34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfYJJKyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfYJJKyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FC8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774902293;
	bh=VtjIuYWRZNAS9yraA7KcHpa1cEYvIZ1snQff9DrCKxE=;
	h=To:Subject:From:Date:From;
	b=EfYJJKyK45mpw6xxwrP54KxLeUtKqagzKTujZpsFLg/tE/fVXfGT6Akkwq7MCIruP
	 /Ew9woqo7+6N0cgRFmoEqOnFvurJKn+0xMUs1OyBpwXEI1VK74mhE1s4kIWpPhX1kg
	 HDXU0MsFWWaKmVfbfCNVJjvANKYel/a/NvxTwM6WD+D8BZ/ZVjjt8dM76tAOZlddxM
	 wWGB7Wy8qzeTQqjDFX6edSsrknnRweBovRF0YRB6KuzQLkSga68WyaclU9Dv69A4rr
	 zH2/9a8k8yG9h9OFIMZ+SxN7vYDsM5XRNMxl2z6WzBevUls/zqtvhFDJz9Ul3UXLKQ
	 pwJhVZtfpY3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162F1061B1E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490229358.17195.15139425227303893384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc759ce1549d1a8871f6fe09ebbbaca59da4691b98d70df648200c81da4c21c
Date: Mon, 30 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774902293
