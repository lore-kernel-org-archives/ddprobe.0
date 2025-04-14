Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4031990C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744657794; cv=none; b=YeCi8de63S0P9Ql2J7yktauqk22jQCMp+y0GA0AJ9OaLPHjGFP3NJFr3a8ib8MFB7/Ows7vMY8LPHnsdDC7ZYV4UdZl01B5CYDE3m9ahN3AEfkveyF4Ciu4vkQ9FRmGL6Y5u3SwYJB0xAiAWpn2SGRnLzqdUp3S8I0WTLX4RXlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744657794; c=relaxed/simple;
	bh=0QaKgoYurXsiYLS0JZOweoYgQbCGcmVQaW1wJ7LbWIM=;
	h=To:Subject:From:Message-Id:Date; b=p6kGk1lQNABgW5oBboSD9t47EN+olOPtZoS60DBuopPN51K+3zo+uEpX4MnJMrSr8KGY+lIcxy2RwYkEH6RKp1bpTjg1Y5OwqVcwMVqBod0Wmm1PnkL5oyvrrF9a/4Z9olnWQAJUAUutCBmL05QPFxx1qvgoC/VFlMNEbxnZp/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byz0gJD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byz0gJD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B643CC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744657793;
	bh=0QaKgoYurXsiYLS0JZOweoYgQbCGcmVQaW1wJ7LbWIM=;
	h=To:Subject:From:Date:From;
	b=byz0gJD+i5on7HPFqJL5cgcKDJgk0BvrldHN/BJXoKs7fq8nFm87mKRb0/vOXQyS+
	 LZP/6NUhT/srrY8nVODFKlEI9P2D0tFwwv6WvuJiDpB+5ATEY4ugBrD1BDuY9Z7hGy
	 f+BHHnnEKXLn+LRD3eFndysMKIjsokbSNKtq8sYXcVSZfBOT/glqRsiOzZRs0DZ2Oi
	 plu2SBLFpYsGTfVJN3wR7p9aRh0fqPNs1J5c7QU2wfRo9fUHR7ayao5tKns6TRjDdT
	 Zsx3/ttjixaZSLJk+a65icMLFLDnr/y+ZecCjf1KbTtnqWZfkV46wihWHEtrcFkz4J
	 o72rw+jsrjb1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF73C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465779364.32449.1502341363366802555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8444b55a3962600342f58f5b21d46a2f4c68934b3306c0f572f34cceb60b0f
Date: Mon, 14 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744657793
