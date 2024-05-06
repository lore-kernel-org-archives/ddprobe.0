Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4886CDAC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714984943; cv=none; b=g94dCroDvzx9n7g6tj6QOUsZu68o7Mj5xa6tSlgCTuCnA7UiHwDxqHI3iUIiOJU9acp0X2S8xKpe8zb0MlWQxhZjXWV2nRvXy0BMWzVn2WvJlNLps6N3VM7OVKHooWBz1+ZijjKD7YIpW6HhWH7VXqpVGiEUy4mMR+hq1K7m0/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714984943; c=relaxed/simple;
	bh=wcNa91qWqVnkaesn5a1S4fEGCASS1KFwR+adbdEih8I=;
	h=To:Subject:From:Message-Id:Date; b=ie7RG74m9rUHQWOHjPMm0fUZqR54QJAzLumHEsn6ZhRy9Dsgu9AM2FzhhD+NDgUls1Q/EaPA14K4Y6zUyj2lsDuUe1FkqB6+doFwNEBq26YGfJddM8z/BkHmp/g9D0mjZ+xuMZz6ZbDQP7B/Hl91AD5uDZb9Bsh/9mpVFneC4G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6nCAIkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6nCAIkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56B5C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714984942;
	bh=wcNa91qWqVnkaesn5a1S4fEGCASS1KFwR+adbdEih8I=;
	h=To:Subject:From:Date:From;
	b=C6nCAIkng3qAGh1CO420irSUpd0NC/Qgarpgl+W3TpYo7PZMjrUafzH4Juz46+mM7
	 Q6G+PqnUSbTkNJknZbOEqcJt/RQYduY54dQ8PftmVilVes3vSGJ76gvTsm0Uc98Iyg
	 9oz/2CTUKXv+NY2CTxzAlzGNXXHqYzzUZZqnDu8oTM7lcT7C1wDIl+tktft/+qBOaK
	 8nqmj4FEILFNO3RzDKW0RE1NGyc83YM7lH1m5gYhjB+1Ey63uxSa9tVmHCOQnOPzCi
	 h/J6+Ltf6pGWsoBgqCrO9ZS6MJjBywIKzzbgPRPsYaXJnawvOdXmGNNC5DgQleL+Bq
	 9Y2PJICi5jzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2663C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498494278.11484.800963977389718070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d48aecee0f2dad75b8a032db71741076f53ca4bce43d9fb4a4be920be432004
Date: Mon, 06 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714984942
