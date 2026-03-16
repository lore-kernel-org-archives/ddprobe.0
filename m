Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7FD2D8768
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773672294; cv=none; b=uTCnDQ02s2YqvIFsJAA9i4gShi93SU/Xem7G1mKQeeJ3MDwGRizpB93w+EvARPchbOEPAfmVrrLhOBOn8hc3gBqzFOeT83IuEQXYOMzA4JOkCuv8rgYUqWDwR3VpC97d0Dym3MAfeOeJeFQTbO4RLBdVuPn9Y7bmuIrQP7QYWhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773672294; c=relaxed/simple;
	bh=FTm7fVpScxMxSxgj/n80drftcvZbYOGrM1zMX5KtVCI=;
	h=To:Subject:From:Message-Id:Date; b=WwP2MXnAE8rsh2f1Vm2/2lyqUGi6oPtGzGZ2MhaUxHIkRvtSQFn6k3n/bhg+mnAdUsqFe21jvVa/4iJqp/vH6ZQm1qr05aj0THvuG8/M1l3OeRVBhuFkbV7QmlmHTfL2uPwOk0MLJxbD37rv+iGOncWsiiY8LLMqaH6sVcLsdd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9fFgWcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9fFgWcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A8C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773672293;
	bh=FTm7fVpScxMxSxgj/n80drftcvZbYOGrM1zMX5KtVCI=;
	h=To:Subject:From:Date:From;
	b=s9fFgWcUzTyvV3WrY2C6XQUgrZNLhBRO9kh9fYtZulSRgBfNpZGL8PXtyhJTx3J7e
	 NWEOcAeisMP9PGEyn1NKtvsF1cnm7BeSOJvpQTkma3BJMjR4CeNg4BjE26WbalU7O2
	 YJRP67Ku/l7uM10ySRwbgWGJqXjoSbX40VJkFZeBqC2HUEz7ST+18/TzRNzQTtHHM9
	 lQJBgPjDTnjVW0G9E9RhdUl3kXWA+nrz0ENUpDgnD4u/U00TrRaas+pD3viQqO6B9N
	 f/223XxHEUCd8a2s2yiHy5kc1ehqPXkys+ZKdwQ7C9L5H9RWFwhQiZIOU3M1sLqwu2
	 oh8K38Nw7hBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96377F506DA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367229360.8965.15891983267858634893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051c9d0268731ee11e0050fd47dbe57bae20731c4ef7c815fb9a0e35452ab16f
Date: Mon, 16 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773672293
