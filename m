Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1401233D81
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733822754; cv=none; b=J8Y38h4mWZN3h034cyHPfl2gj9RhK6obnefomZgUPbkRzQD+KZarhWVbCLYnB3QeD+ChgHppVZ7+PiYYvUhodQJW8T9qpkUfLtV4DIkz5sdxOj8bIMkqWNksdZ3iK7GqDwMaK14OEKS8honOzaoA73uyUX372wbBKIRbn6OTPIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733822754; c=relaxed/simple;
	bh=Ojk+6WIV2S5M5Gj6K0FKqpJ5/9gt0ukWxdhlMsPfrx4=;
	h=To:Subject:From:Message-Id:Date; b=SBwY9AqZyCdjGJb/Rk+FcxEjq7YKneyJzjLJ/sPUv1zwzix8UtmXjVbPg5qV2sZRka5TGu0b/JqR49ZWEabPX5x8DrC7MQqK3S8GWYAHdg9NamuDF5Tx4+Pml7ir/4kTM14N0ThRy7jEW8yxBTqZVJ0Vq+w7UDrp22o56fMeuLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgJljTo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgJljTo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A62C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733822753;
	bh=Ojk+6WIV2S5M5Gj6K0FKqpJ5/9gt0ukWxdhlMsPfrx4=;
	h=To:Subject:From:Date:From;
	b=OgJljTo/SbRbJ8EB+0zgc7nZb0lGshmWTlvnV21gvE8tD7JuUUL5+/+08wNPzj26F
	 H12f33Av2wmA0mWFnE4BsMGmHNBe7ZZlvVpOH7pFqHoO1iC5AilkapdJx4GIUgqBN0
	 Ha+x4p7rOUPYq1TQ4d5xVDe+jXI5/Ars7ps1w80F4YDa3Z1O0ittY8Y+36qI9yaAdW
	 77D9JWNcmf0cp2mMpp8tk9GFWE7PbG5teXsaBzDbQEAr/7/XHPaw6bx5DSieKgvHcJ
	 5ILpJSjuXy40N1tazh9FkftMQbIfjsLtXUUOgJsZpXransgBMJoTDI3yHaWXjIFz6o
	 Ou/7wjwIdzkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CABCE77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382275362.14167.10502116407976378611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: facc5ceea02827c0338aeacfb411e0ca2bcece366236f84fddfd228b09f33428
Date: Tue, 10 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733822753
