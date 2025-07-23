Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32814207E03
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753313394; cv=none; b=im70JL59vlvjL7vNYgYbBm/2s7XZklblJPMGNcshkPlDzWBPvvVUP0VhYGhh7UpUGnyFdMyqWbpg1cOYBY1Bw7RJq7RdEbwuwd9uCwPc6zN3d8Bfn7GARQcrqg84ZldiuyYqa7hzi0JE30HJV1QE/9PApWoxsQTmOy3balrF9CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753313394; c=relaxed/simple;
	bh=Ugwd6bDsqOa5/68+Fo3fMxdXkX6bPxC4qdm/tuigzDI=;
	h=To:Subject:From:Message-Id:Date; b=N5ztB3m32ly8QW2MiPTp2VZw4dQnnmvCgGaI5Mx4EvfN6USGgbTf8sDWtIjdG+v1vfF/Aa0EX9DiGQv6/uwxAvmS9g4suwaFIJtHxvc0WYuqMlqfhwvYTM2U7vkeJXHaJRSRTg7P05+cCU6uQ8zKprgzLd/bcgxZdKGIHKsemHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVsa/P4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVsa/P4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3177C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753313393;
	bh=Ugwd6bDsqOa5/68+Fo3fMxdXkX6bPxC4qdm/tuigzDI=;
	h=To:Subject:From:Date:From;
	b=LVsa/P4vQiL+Qt/8jt1+CqpVshYhKq134/f92mvnXj9YNGLUvXPmIgaaNG1nfY9qw
	 6McRpvT+6xeWqd1J9MY2/aHqGiM7kZdr5rqOQ2ST0BZdppiRQsVviYn0yAs3cqWpzu
	 4F2B4HLd/r8cDsSJSljmhg/PD1MGr/TrfqfoNP/A4glEh+utlJiyGzbUa1vzmM4+hJ
	 aKJBCKulz8+ue8eGjaPSaKpLsIt1ihN1KmULb0csxV/jebwVOlVKM7p+VI2NKJxLq5
	 Ho8ccXevYkmMjzS1GHOLEIjLqFrSCIH78BHrrMK9UxBTTHYY7i47S4CW7fr3UTE3PO
	 WmKLjDqS0UBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D4C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331339357.2763.4931059886455149350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e870b7f7307e6177a861ca1295ff66677dcffb2c7d2780a4d5d5707b22804239
Date: Wed, 23 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753313393
