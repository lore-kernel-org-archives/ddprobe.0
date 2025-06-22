Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3681A01C6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750582794; cv=none; b=A8XhE57X81iKqNl7OkH1OVmupFEIMysBrBFB8f9Y7+GShXxgenKvxrigiifpY4LiNhMNVJpe/SjSpkwjAAwf3OdnAt+ugCXzK1gOqiDiHXiX7nu96kEWy2n0dP8t6nJkO+JsZfqMzgkNfAuq1Gf8Ib9mqDilqTmVTB2HalTHEqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750582794; c=relaxed/simple;
	bh=0ionXxMNBfzZs+3bbHn9WO1DK+w070yc5JXZC8Wr4eM=;
	h=To:Subject:From:Message-Id:Date; b=DPDaZtIIaVGh9m1pe4bC0U1YQNjbYQYkrQlh98ZwC+PBqhKcHZSLZr0YoNNw+HV8xyw5zYPk5un+420mZnzZAI5z0q+dLAy+zjJWJqaTg9CkriZGo5bUqWh047Xs4FJH9vcM/KqHTNFfOb8LP825DJiFw2/qbmIUVYpCn99ueOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usFvOFcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usFvOFcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A735BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750582793;
	bh=0ionXxMNBfzZs+3bbHn9WO1DK+w070yc5JXZC8Wr4eM=;
	h=To:Subject:From:Date:From;
	b=usFvOFcWpj+VGrd6xjHXTnUm+2IpI7O9GkSyrui0kcyDxCaSOFoVEL4hMqnGLF76v
	 hRxVOJxBc7eZ1yvvCXJ0xcj2ktq3ad3nZ1NO3YCT3q/Zid62yCpxiM1OccQshp4bCI
	 46ou04LFYGuBv7QQo7lNNTsnUpcLPlvTQsiXCbMeURC9xS+WqB9dTM6HDIUmv6vTFT
	 uE1U6WZ5r0af0soAuGtGzEbG4rvOc7NE1OS3ivrP/eyK0cprCM7Ma7C1oVmhidWq7x
	 T0WuN7aK5hzC4toxCf7jzNjXKgysG7H0UzKGYoWu01/eS9R3On9d5lUWRIh5pRsHEa
	 gjKoHfXHqyUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E4C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058279358.13909.5994693555885039117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996cc9fd92cff5538eab3894908380e5cd618dfd11d0e945156de30c25529b4b
Date: Sun, 22 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750582793
