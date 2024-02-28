Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F104E1D689
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709102297; cv=none; b=HnORoEinTu8zOVyNKIxTCnprxIvLNx5UGqLi6BPjIzVJEP93kqfwvhJrC8WjQwqNyZTmI4rO8PSxqssvr9tQUFzlS5vhX3SuVG43ztw2DmxWLyQwC1eUyOC2cewuAXvPdtyvHZ2iJoAqq6tvR9XHiqiD1/wFxSrz3SJLMvJWLDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709102297; c=relaxed/simple;
	bh=uqNVw3N28xkHeLlZQNRfXiiCXzIMg+JgY0f+jLIWwnk=;
	h=To:Subject:From:Message-Id:Date; b=Yo4FNOvGxXn/wBuRLQa7Y4TVt4ifSe1acQbyeXYBESW0DT2IJ3CJSnUmN5c2ViY2FQHGElLj6xHAcCIe9OW0NeCVQ9ETqi2x/YZPLWth4ogfUT6lvz/j35YoOsZjY+kzpcihsWjoN5id0opytJmmTVOW1JRWudv8Ob2tMm7jg+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvxz84oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvxz84oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85576C433F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709102296;
	bh=uqNVw3N28xkHeLlZQNRfXiiCXzIMg+JgY0f+jLIWwnk=;
	h=To:Subject:From:Date:From;
	b=qvxz84oEKKH/PdnIlui6uZNbUzXQbQfzby+GDLkTVl8AwitvjLU9I7ps54AfoVRUr
	 78VhkP0jtMg7v3xo33Gwzy6+JOwPJdN/pGTCGxBqJm8+OM9Dz8eHxnRXruXt0fD6R8
	 eM+LcCAZLd4oULkqpnOwm+fQmjh1sN/G6kygJPIXk8CvAWqnVmktwyhzUSyGAyOVBa
	 mPC0TPiRLdyAl0/A0NuivLN1Vsfx7jZpM/84vqiq4vBaXgQ2ssMSPUeuHKhGFSmS1s
	 gBnPJr6iVO5gT3dD6DCRGVkgq0wOiXzuxNcDKv0CZbnsg6mHPTfjB49W8VZoGD6QSO
	 QD5n531SLAOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6930AC47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170910229642.15426.9364220724260064533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baefc2a35f1f053ed2a7f8959220e8cbac8fcba698881b088881e392c114844f
Date: Wed, 28 Feb 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709102296
