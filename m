Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C487E19AD8B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748972993; cv=none; b=WE+pzcKRZggx+O++bgniR4dH1rwEbDzYwxaGtnjTFD8bLvwjfqRum62r6BRXX67Wson1eMu5pQuS5nP8LWqLDMbiCDNbN2EuczosXvgiJvBpty38EBmxeASv/80FdWxHbufXmpAg4oWGwkQFm7IUyxXMrR/sVeZ9ndYahJWgtbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748972993; c=relaxed/simple;
	bh=oYigGqiOPocVvTiZVWgiTkYoTyn2O56juFxL8ESlehk=;
	h=To:Subject:From:Message-Id:Date; b=IQ3ZFxC5gkD910UXs/MnftfzXtgkd0dYIYK2CmFigTCPXlO1bIhtkYtXgVcCQdAeVWD3OwWrs+b5Ob4Pi+zxdPCfcRRZeDQmh0YSjBMYmAGpQLnyb+vIFhH5dUT6QkDHx3VVd3MaWV4W17G9ZbaQOsSCRzD5AafLNgaZZZwHG5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VScdUWvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VScdUWvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748972993;
	bh=oYigGqiOPocVvTiZVWgiTkYoTyn2O56juFxL8ESlehk=;
	h=To:Subject:From:Date:From;
	b=VScdUWvGjWvzEtGcG5ZMcYUQywBAUYxiTGlUB6SicRdNU6lNi7fdwogHFMLm0Oxdt
	 1z/NnJdz0TEgkQfhCVEQsRvBaH4ykgZg6bqkRAwoNyezYN1S4qcMhOwtkQX7dGYNhK
	 om6pmX4LRSxTboIhghhd8+sB3PfPVuW4lgfhcVRz8x3koAOMEwA9R0/nOTSvGfY0BI
	 MMEfi6/PLPTdiz2VJyFtUIpylG1fMvtRW1z4HJ6dxDeHswYj2MmUy3O4HpJDThNvl7
	 bVq7hbwS2YLb8y8YZK8779ZIPaTZsH4hSZWXtv4MdAhiH5u1bYRaMWBL8rVnYOXzfq
	 jFVI2UefGaODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A4BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897299359.17721.11346334646797622447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53116cd61ec1a6360f91e8a8e805090e9deff8c40ad34ef589d30a83c2022176
Date: Tue, 03 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748972993
