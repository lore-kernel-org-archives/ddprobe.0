Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F249722625
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711229297; cv=none; b=qCInqxySOsiuzROSvR2WNd8DO2q0G/9yWUJvf4F9JdF5sE7Wc01B8jNvNyKDgsYMfjsGlxRGRy1RAfBN+qB+qFPY6xoWoA/7Uy+iMqnbW7/g+Qmo0JSLjgEJ3tu9XlXPtxNocvdos3ePU1QH1SOsW0GH/Te4N6jqAfR5YMJABoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711229297; c=relaxed/simple;
	bh=FfBZ6oOO0Eqn9/+za8l310uRu2f9HS9AvHuZJvb9csM=;
	h=To:Subject:From:Message-Id:Date; b=Ww/06wvj4M9itO8Py0g9myG+K0x/aSRmkfNQbRtWXw1SW+T+BHsDEoauow8e3MY2SA7HfruKdmAhiO6VP1xPSgAZyz37kgvkS1RLllv9DKFZtPy5jh00UbF3CuTCxA6TCDVnERAqhUVlW0aVYjkv8JBiQHTvd1CQygy5iRgvprk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL8qJiX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL8qJiX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7D1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711229296;
	bh=FfBZ6oOO0Eqn9/+za8l310uRu2f9HS9AvHuZJvb9csM=;
	h=To:Subject:From:Date:From;
	b=AL8qJiX16kuQG+NdPVF/uSZN59nL7Ln3dBZ09BYwG1UrAtbAHfqI067bmNcCMUVa/
	 NT2mx49Tv+udIY+IaWGx753Dsb2Z4AlDf5Oxe8n4yb1iJpQml1niIPsE/3M/HS3mrM
	 EuUFhpBWyDVlRUHag0Dw7G70psEfl8qhxiOd2Al0jdCcgPoFNVkdklr13pqrseWlgS
	 XLI2h//aNuYv03kP90ksRwWdwfdvXMez3qQFmUyq1tL6ItZpsN4nGtilenZtA6cExP
	 O3g3cyt5qw3IGuq2s4B9VkGWZJoGX0+/SIrd/oBZ0ub+LEKBN4zyMxLne+84cd+Bz2
	 6+FzY2LFLX8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BDEC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171122929638.31526.2058802204205979814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0166f958825e1737c835cb01b4062277673cc3366100addb61f318b089cb8c63
Date: Sat, 23 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711229296
