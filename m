Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB74537F00F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774973694; cv=none; b=qlhGH1sYZqWNjAuwIJriLA1TiW9csVfTX6WkKjQBtb3FAxMMfRqIJOXeHveLWQuo9FgvNXS+IdMEnLWw5nBAC0hhKOkK5wOvhGv7fHK67tB4BsFtAzEQ9xGx2Z7Yk1+sTdFF7eUd0OtzwTebegKE4AkJ3vKpckFtWcvcTxTryu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774973694; c=relaxed/simple;
	bh=M0HodpV9YsMEiXpCl9ceqIbkNqx72Mk3dWe1hmlSfP8=;
	h=To:Subject:From:Message-Id:Date; b=Uq7vsPJ7Z9KEPaqg1QLwXRELm7MkiVgxDZLghkw6DDoYADEYcKL0rKAFOe31kOPWYi1xISEh4w/QLov4PjqsCqG6rdZMYj7SzTIIL3/ZxWj/fxovHxLPZoeum95ewqjUQvWoem6axXEWFFvi9w/ZNzmiR1W2LHvu00SOZe3cezI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEOFOsoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEOFOsoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ECC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774973693;
	bh=M0HodpV9YsMEiXpCl9ceqIbkNqx72Mk3dWe1hmlSfP8=;
	h=To:Subject:From:Date:From;
	b=BEOFOsoAaaU1F7iZHAyxljUulFf8gCAhGI6L8qrmZQOzBIGW7cyq7vFOyyd/EERvu
	 kJiGwM+VansQI1xDX8dZolwiw23qfUPDObnjUkZPRLB9dDOGRXphVD/a6v0RgUl3ac
	 aboe6v2p99EZMa7wB0GtiZo21cA5gEHFZBBwUAeLK14iBP+oLjlNceGvYZ71HykUUf
	 5eLh6NO13kDl74jJmD0Etp8Fows1afRwu3H9Kie5C4PIhHs56PuKx0Y5Q8la/usNXY
	 ngdNhB1Hy79r0TG312JXgnB9ZOxHOY6kdqv7opijYkTcg0ewa17A2oaBJGfOur4DrI
	 MI/7orjkr4aTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D610F92E0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497369358.8788.11726762851966371758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1cf44f5829229cd4930d6514c9ad19a4b8822b2634fd16b78ce2d9a23993aa4
Date: Tue, 31 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774973693
