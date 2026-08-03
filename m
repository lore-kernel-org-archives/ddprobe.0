Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC5735E1BF
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785778234; cv=none; b=LzZbzkWHyOSWC9iX3aSdwdfU2VgambfcfMheFB29rvZt7xeoleb1CTAhn0QSd0wnJlQ1GLZWZKrx4YgkczLgPr3aoTl7qxCHcS9CnxUbAp/NmNwbL3QHWifRqAFUfFw64my3cGn/gThQFExD2T1JREhvAJrmQyM+DuG61ftXA8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785778234; c=relaxed/simple;
	bh=JmPLDB10sdnMbF6s62yJY/swojf3jr7Qy1JWXysKlZo=;
	h=To:Subject:From:Message-Id:Date; b=emnNatGIAvaJJa8aznPZFoVCwNF1UuEUUqBZ8xENEIh9F5DB5b79gcyB59NGC9UuA2YNtNcCU3TqI1dFFPpzrKpblybLGXiLbN41qtMx4yxq2V2uUqWQx1Abp9/C38B1yzDyg0CYhjtnd5KlYdOwPsVzoWhSCf9Jr9cKr7oSDrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYjhT//W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYjhT//W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C9D8C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785778234;
	bh=JmPLDB10sdnMbF6s62yJY/swojf3jr7Qy1JWXysKlZo=;
	h=To:Subject:From:Date:From;
	b=SYjhT//Wd3eEMXhefnwVfPsX9R7fj0m81nNljJbWA/34PNdX7aWcPxmhFmKj12pn7
	 cJFTJCsC7SLauiaPHwOPphZ7IshTWVChos5Sb6jQfDHvulUwO1XRSX9rT+/E056rvK
	 u8jMIuVOs6j/IJ6BJQbNlV1DR0pZBlwy5eMGrcBFGvCqe5OWdn2nNPnx/FflNHrxuB
	 fGQX+lR4ORdaRbDElDjwoaOXYZmTQC6nUTR+ZTva4x5vdSRPcvT/25Lpct2+dOmV8j
	 h5S71YpN2wtxs7KviwHvqHh8mzM5iWsY5fqxv76UoiA0P1ySDTYHUBKWU03VNXsJvA
	 4MaVnqwFJktbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAD7C55822
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577823383.18651.18319130824046221153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d8e3b6ca7add46e202b369418ab10bf589bf7504fc0dc7837d6e4695a68058
Date: Mon, 03 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785778233
