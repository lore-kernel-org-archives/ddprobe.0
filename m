Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6DD3DA5C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652293; cv=none; b=djssdqMEZttOie1Fpo/7QKqCRWs9pUfWKfyGLr3czYQm7EE6b1EFgJSEmG8C+VONpzQM1sjHOyxPuz4puMmHZoWe2U0qsbBAFeJVGS78AEiREisg0fuEHvaUupXPyBm5IKxPZtULnprGk+T7rNuuBJodacxm9ohEVT3XRWTXSh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652293; c=relaxed/simple;
	bh=xhpGp+oAWxbK+SzJj4B1lBezq7z0DfGyKK/CdKw79dg=;
	h=To:Subject:From:Message-Id:Date; b=VbKbWJ15Kt9PFhEd7VaMemAv9Mf8hakbk3CHhwtlz83MuoRoTw4W5CS+nAr9urJoKlweQy2iYk5gpRiQ5MeUKYPYgvxi3RvPppCVTR9H429CpPHurqcqdwP7RfYtLkRqwHXn3yv67e+BeMnwpGytHQqrtKUngIDYWO5ZiB+dFo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3nFw9Jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3nFw9Jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4AAC19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772652293;
	bh=xhpGp+oAWxbK+SzJj4B1lBezq7z0DfGyKK/CdKw79dg=;
	h=To:Subject:From:Date:From;
	b=n3nFw9JwSgBHFKEDnlrj/GvKf0AkE7o1K/2WodSGIdXboODqhpANWpLjuB+CXeXO1
	 jX2afZG7WVgjW6xWh+JDDvSMZ+Q3VayCAaRvTEJ+ZOKa526zqbteFMst2czefhciWC
	 yFLhdr492rlVHEO8MghqHDC9VN+WKJEAKIKIjlzmE6hoj0JQaZLbJbhHDs3X/fkwiJ
	 QVQb/oKplKpUpIYGYQkwaOmCQ+C2xmMIA81eqaHHUGgALxUq/03/Vbe4LKr6+n365D
	 DrpNxJn8k/LKfLLiq10OM+epPgUKdzwkRtK4TooEHyylFarpftrhTi4Y9b6qmPfcuB
	 ucTedre5FPeXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95496EFCE37
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265229360.5947.7523165712827350030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4923eb5e6094a5cf510370e96f7548abe902838f26ed8859f82a796e8412efa0
Date: Wed, 04 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772652293
