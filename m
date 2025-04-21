Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C862165F3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745270395; cv=none; b=XlyROVLBwGinbl/wCQSvT7y3dk4w2LTO2ZzEMfJ2H9vYdm5gxU8keN81qVy/5L/bMHSWpZVHVBt0T+VFM7G7UBPtu7kGxwlRmom32qkVZrVesQc9sebdaM1rLvThQf0fbcdab0jfASWKPxBmHhGPvwj/p188/qCsEOFj5NvO/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745270395; c=relaxed/simple;
	bh=s409QHIJjuskZrX6C6BMflt3QLqcWKHvTqUdynClB/s=;
	h=To:Subject:From:Message-Id:Date; b=Rh1iuGPq4zcd1tq2gY//BzcvBYQt+CzjlZtqFoG+0hMh3Z0Ga+1EKZ0CKm/mbh2ULRJfXX3ezh/1ZvlAk6fe2j69ypJfqrXnClXeMRrVtS3gRUppUCNdr8pVlUKwBs1j6Q2DurNi12WpBc5pcp2K/pOlHxoly6x0cbrZfdiY8UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s94zTNlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s94zTNlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDB7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745270393;
	bh=s409QHIJjuskZrX6C6BMflt3QLqcWKHvTqUdynClB/s=;
	h=To:Subject:From:Date:From;
	b=s94zTNlrN2chxnwAmdm0WNmlQ+ELmPMxhtAnVh2ovHQNh2E0FUFd1KFd7Uwb4eeb1
	 JlNLAAE2itSIlhQA2RLlMYpNehPogi87vYpQwrT9HZYWLanygQaq6Woi0+90MmYFga
	 I6vVfCWm0jETf8OJGvhuWyUBCKLxu7V6yaU4EBqIugOS+QfzZhJ+mM6Y6sgKdLUCD7
	 rrS3PMTq+zT83BAaDobM38sd3xYA3qUPmGtUWr06j7lc5wauYuj8WI9j4jBjMIH2Xc
	 gDzDSk4Oze+Qmrsb0wSqtCQz9doxEy01Sq7gz2xYYcNdZZPthq9mcRK4iJiVrXrPIf
	 GnvZqSF+YEvAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA6C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527039361.19589.3673006857694207260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab867063242cef73592a22113d823026a7b59aa95960593b71b3e48fe3da4495
Date: Mon, 21 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745270393
