Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5675BC13B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719075143; cv=none; b=ksoM0ynWqpSALns6VPhHw8OXU01Dq1SISW/S1Frr0ohAgVu2cybIJGv84tkOeafKwt/fGqIUQkIzJIZgL3JRkMRPDc6ZLsOw440cmTg89yA2iLxYmTVHAZLjjXqyFCbqyMPqfOevlmEJJnmGj/xOoC3QPIS0XQp1BOn4F1rktJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719075143; c=relaxed/simple;
	bh=0ZdRKejkMGKRyHBuEbONs/jFLGRkEr9Z1xNSLgN4zeU=;
	h=To:Subject:From:Message-Id:Date; b=Aivo7CZZxqJBSdmAGrN9Y8kBgWoTbdEU4pvhiiWKYIWhO580q8ukTEFlYcPTKnsXwFMn3LrRcMEVIKQNZG1P4dViDIHr3y8KqBPdQsK/HBX0RGTEBD5ll+dvo2ymFCcoKUKQkq7HHB22Oets+8IMG7iKc668mr8Q3btQPAHUhMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQL/hr3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQL/hr3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53E7C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719075142;
	bh=0ZdRKejkMGKRyHBuEbONs/jFLGRkEr9Z1xNSLgN4zeU=;
	h=To:Subject:From:Date:From;
	b=AQL/hr3q8EgrVJA4Cpfa/6fkxh7QWjdqXe9rU8jvb5w9yuJENp4enXGrdYR1kMz9K
	 e4ETK3kRYt64RApHZZqA80HwxoDHSMFByBXsrpJe6PwVmg1UpkVwADoOJb9kqj5Q28
	 0rppDd7EI0CqVhVIF2sdt2GsLqIt3SNvqvRIQ4Dv5Ppsl47dIzAf0al6/sPLtyKSlJ
	 tZQT8DAweG/Z2ziV8eUA4zxNtsRhWBjGQ5AWmZhVEYYg9M6hl0ey6BPyZ+DAzBOknI
	 UA3L3K+D2eLFymvNLMlYAeL6D0QkeIqZz07axeGdSLJl+BAo822LyGBR56cplGYmXE
	 KugdWi7o+F14g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC372C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907514276.16662.5794373362886982472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357d801887f66007c879f8d977089615690832c15f7fb51f365f8455efa3cb18
Date: Sat, 22 Jun 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719075142
