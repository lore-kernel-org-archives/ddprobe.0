Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24A6278753
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766565833; cv=none; b=WZPZC9vsEsiHO+gus9KkuIJ4x6ksg6A0dFbrvpnpi0Z+Z+kcoWvFydB6Z9CEbXcDz/P215jGzC3Ziitn/HJruXiMkSbLzVmDD2HGoYTxhcVvnt1gbVgdCXSiEm2rb3p1ABAWZ0JHXpIL9l4PptudWyXgJthfSfyZOVVuBtG8QO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766565833; c=relaxed/simple;
	bh=XRd8xiIJnRgZXkMLYvMcvySDLv5ME4+qLtYv/Zejau4=;
	h=To:Subject:From:Message-Id:Date; b=fWrKklSaBlmr5NQs+8/kUXJOEL53RDk5iXV4KNs1XEi6NF1S3Pi0zFbRrzHLh6R6IZRHK/2LQ/zdPfLqWvL4xO0/vwpWgzLccQM8jgVUEnL/4BhQlS/VEtbskYWXefU1gSCzbFDVYLdI/4TOTwq1ZjJNT5q882E8kXQ995OEAuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlLJ5fKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlLJ5fKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5FC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766565833;
	bh=XRd8xiIJnRgZXkMLYvMcvySDLv5ME4+qLtYv/Zejau4=;
	h=To:Subject:From:Date:From;
	b=nlLJ5fKgfvFHbtbxoV5dCOOIP/ppEoCUFhb4PtWq+PYTsYRHpjHaQa9KSkc2FWpqK
	 BJ4E8yFjD7n76t+kLmE5aIkHtP89ovcopSEeJj93w+t2Zka4bOxVjXpGOOOpLtD3ip
	 VbHbV1l/eoG9ZlfwXUQF2SknDTZb5TZ2Tsr2rFTA/r4tRIQwBiumBMjiIrpJrKLm7p
	 0PTN79zdP20gRhhZAdBmgitbJV+mKxIs0TMMePpgJabj9aXpXfnJj76qqR0wEtGXF1
	 tqqeSMVQZmj/DsEjq4T4yktqvDzRH3sNDGAY6vD/PBFuJNw3W8uCwmINT0pvReF9Fl
	 UtwjBY+GG59DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137BE75423
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656583358.26886.3544618389112356936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e344f7ee71315bea9b27de22eb74ca72b2ea074bbf5900812f4793b36eb7de9
Date: Wed, 24 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766565833
