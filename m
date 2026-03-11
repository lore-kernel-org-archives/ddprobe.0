Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9B640DFB3
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773261894; cv=none; b=eSo7JoblATk8Jsr0aB6eHFwlY+2KmE+s5dSupNzSe1ETLr5sZMjqT+4R52N35DYWxGjhlFCtX6Mm/mps45eRRAcrUcMgHxt7c77Ds3HtUPF9d4o7VCn+z6NW01rpN3OWHAoNoNrMrUg4GTqZV1tNCksaGrH3NWtHomS02ylZJkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773261894; c=relaxed/simple;
	bh=a+v3K+svvjLMjE3VWEjVaXDy7UymqSrP3k5Vmm6kvd8=;
	h=To:Subject:From:Message-Id:Date; b=tPsnf2fvQkNca2qIviADsGRl5J/C/U+JIOgPpbAAZ6L+b1/IcWTZ0PKpjVyaYToHez/t1z5ECGKLNGzjUg6VyYYGdV11yug/7sV2DUTWd3AXnSACqmi2an8rPGj02q322zoUxNXkugVp7r7FtF/0G9n2pfZFtAGSyLj2zh/EQ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTtmK78m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTtmK78m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7418C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773261893;
	bh=a+v3K+svvjLMjE3VWEjVaXDy7UymqSrP3k5Vmm6kvd8=;
	h=To:Subject:From:Date:From;
	b=fTtmK78mt2y5MHxfwTOMD0opkia/o1N6BIeY7qSHtTtP9gfFbLdLHX8LWkPY6Y8vC
	 puFmOyhGwIw/IV88+/YGFPS4wSkzO5NnpYoHiWkkl+i7N1LqPalSlfi/FIsx+Bb0FS
	 0v2m+E1dq5k6PNdjAfbS8EFVlPASxPzU5mv+llCsAQEJhgDGj/1GijJQ8N7jJzXA5t
	 8m9+kATygtdjYA7ABy17MuwBkz4XPCOLbq0Xi8RZIGQXJu1NAolEpE2djyn8hqF91r
	 dt95TKMFjDJ0RdrZoHFo3GEC752/mxPxEjH1TzsEaGuQ0D0wf+mF5S3tWBhWhvzXVc
	 yxj65WutAD8jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4C103E2E5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326189359.17006.11528949338089669511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c809363019d766aa7abc6719fceaebbe86916ce271083fbbee376dfbe684d4
Date: Wed, 11 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773261893
