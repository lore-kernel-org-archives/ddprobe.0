Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D389567F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718759963; cv=none; b=SE4YYUnr9ZerhGdYVjgXqolncCLAgyoQ2UTuXqs0u4JWqFR28HP2fMY6x5h9P7eR1QVOjqEqVJoXmaKjcOJH6ugwdStqamGymmpNl9jeRIgvdp4+qKihPlokz+nDKpiMdAwh3YnIPfxHoFxfYZn4rKl1fqkXaYD6BKO6vqQVXRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718759963; c=relaxed/simple;
	bh=C3pws8eFcgxGuL/zQIcZ1l+EP44Pr2PRdcJCMKN4HuQ=;
	h=To:Subject:From:Message-Id:Date; b=qbPp0bitNPpV5iC6mtK4kJFEjw/nD76XfsZm2zBspPgTo14OV8aTFLMwvv/hYtQ52+RJVJsS4Ev8n8KK/r7WCX3tOTv3PDRGPc4UrB+9Z7xo/WsgkLzg66rvb5U+z8hLh/xXSd2gmo1EA0wx5+Ncztt3KLq+68nGIXAkF7Ishbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oa/Z/fSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oa/Z/fSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5810C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718759962;
	bh=C3pws8eFcgxGuL/zQIcZ1l+EP44Pr2PRdcJCMKN4HuQ=;
	h=To:Subject:From:Date:From;
	b=Oa/Z/fSO2KLsr1y59GRUEmJPIypjH7RlZE/6k3mOtG5N8zaMM1RXD6BVuaivOcQ0Q
	 QeA1De1TVPncqYZnWJnrbxSCoeyp9nvlw5k8QyXFPbms4LGDnKf6xy9WMpIgI1SJ4E
	 NcawYot5kC1XW0g5dHFjQN7HLfvd+0Gx4vHz8a0U5beLrwVfaxgobEeK3tt3n8Hqdm
	 9pq8sSlLcMYpLcnqig+KiRc87f9wsd8wE4FJQJM5zPPmkNrDvROC5L33Cks/KFS6ma
	 RfXT2F8PrqFj0T59v8t3jfZKBy9/lmJopPAUNW61zLak/rJcvZ9KU5GIg9DFORbTNM
	 6WYTP9xitRrFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBF0C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875996283.2032.4733018803409473342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23eef411606addc9c37fb4fbac0b04e44e4df670f203d2302e22f7897c258bf
Date: Wed, 19 Jun 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718759962
