Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E880145A05
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743923995; cv=none; b=q5LUeKgfA8PGKfvGIRndVkKVjRCE6rArIieHWRkeZSYaJuepJxHBPLSeYI/V27XfYKFnvBUpEi47W9zrnQy1g9Sfhz74dEWVSYyhVch9qOcmTEQiOufsvRdJuRSf4SnSlYgydUIoH+7wJ64dxfsA9b5RUbJyv+fUivsD7EDa8LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743923995; c=relaxed/simple;
	bh=JzKjPqx7MdLaM7E4hCMmN6NEUqL5YyrpW6Kd5faHOwU=;
	h=To:Subject:From:Message-Id:Date; b=G5w+Tdl9rcJq80uiWcGOni0332DokBP87YBpkHgTcZbZm/kNfXgRFCvXiiHjSMQAyoHqo6hbX/d0h8ghrUCsPMMzbwi9dwpeA2rGL+N/P4YtaAyFn2yScvzHd5PY4Yl77rd9NSwr6aG6nueEOiRuk/4a5LuX0dN4/BOAakmZlmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFNqolwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFNqolwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0F1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743923993;
	bh=JzKjPqx7MdLaM7E4hCMmN6NEUqL5YyrpW6Kd5faHOwU=;
	h=To:Subject:From:Date:From;
	b=fFNqolwY0srCIjgDbMiqbY2VHF8aapYi9u8k/iueLklxOaYIQMiYpQNubDktwdimT
	 xng8WbMxcgWilG0cge4EQ83BX3qlNwdegm7OWIrzmtzx5ns5qUKC9u5E4cSa4op8it
	 9wSU0XLNWrY0wTUhm8k3kTkXbl/6GYGNUk9bWjpCZZOMNnwv7uLeW8V4dY6wiAoSy4
	 zta6VkFQs+epVCxFPF5hW4uwh8fwY1vfc5Uqi7BL7v1pCcrbf9awokoL52WKK3ezAB
	 eEjcAtMJsA5Ez9cboTDIQvAP33hk9IYBl9aBpEvEc6yHx6wgFk5889M4qvnF/Tyx9m
	 OgAIp/yq4nZeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B9FC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392399358.25045.4024979167311694953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c270b43f30fb597d352d6277f694b594172edd5bfdfc4f1c6c73edd625edcb
Date: Sun, 06 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743923993
