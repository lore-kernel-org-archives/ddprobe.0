Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3251E3F58E9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783685914; cv=none; b=BqpV+lT4KtJ3Bwb2FtWoAhjeZyySb49Fn3FtCpyg7oH7C2wPrimQfUEHY9rNvPoLcUUyPYIz7iDyuqyKH01/U5xnL55dOUkOmrRHsymlRASk+xBblEwy4+k8+Do0Rs48mpjwORw2GjOkNf3ah7DJ2AMUEeDpN+6UFO+BDC/9S1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783685914; c=relaxed/simple;
	bh=HDFruZUK5D7NaOCZyEacoHVg93vUA6TSSVOFM9ce/+0=;
	h=To:Subject:From:Message-Id:Date; b=pNQW7eAMrF/ruQUNm8ZGh0VzuH3BS3hPZgAsb7Oqj4jjoO6n1Wp5EwTngiwLcQQe9uijYEeXk0ZK7H0WZNNmRAAv5+1AnLH39DGkHsuNTjiFZWV8LcJRpd140sqMVNiE1lDtOGm4h7Jh1OvaL34IpUBgiwB4UQyRbPEjcD5YDZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbKO/QS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbKO/QS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC293C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783685913;
	bh=HDFruZUK5D7NaOCZyEacoHVg93vUA6TSSVOFM9ce/+0=;
	h=To:Subject:From:Date:From;
	b=HbKO/QS2CvzzevAtkE/rSwzc+tkZt1Xy/cQi+EEOASL2F7iCmnjoBDqVkGvgjg0fH
	 nL/cSDT+qD7f0RvBSudSFhouz7/oY5YUeG4ICZq463DgE+ODrWJusIzLBCrOOOtmz5
	 oAHGigaYTRzHrJYCJsmaUZxXdN4GjiwJrlSmiu5Cv5i+NZWLOxJnLnTdPS+gcvPUmu
	 +/ZU+nkmXhDHXU1KqnwXJHMN8QJ2Z638KvyZ5gswLPiLA2T9IABEZPjd4uDAxIPX8f
	 FYOGmVXEGQFDIw/AsgNMIKX7rsdAyWbp6lWpRVbH+DpxQ9zPa56a2DmgWM7w9VXcfL
	 sivbZoytk7tbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE0C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368591368.10493.5573688727105571434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64442fcad085afd9dbb0228502efe08a88d2b83a330f2677ce1b69777cc0434
Date: Fri, 10 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783685913
