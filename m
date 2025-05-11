Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7FAEED8
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746935994; cv=none; b=ndJBuu+EsseAIRdBcxj3eH6ESNGcMRrDGyF+WkFtwf9UePmPX6vFnlHKi2k+vejxvBDOW7I6CNROowa7z0660psrf4rrR9vBI2GY02P0Qj/qtpsPTGYH8aqaGtWN9ipYJwkIrxYCx3F3boXcAxzRyQwZk4AYkezW2lcuzkwHtyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746935994; c=relaxed/simple;
	bh=STwMKjbUdbgk2NNYYUtLvkJgVuVcCh26FGRvqU6fL04=;
	h=To:Subject:From:Message-Id:Date; b=GyYshyq4wgkSAajwRgCBwjyaou5+ZXmIhSDO/dBfJ6TB6bAu4skWn7Jf6+7vNy4l/0+6SkSfrC2l7FyRZ98cRSWWriBcU2PB74jjhI6eObiGGINPMfyieiJUwrzKt59i/r7suvcTkCSHHc3FkZ1YbfPgDy/ke/0+A0YGacUEdqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJHN/BaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJHN/BaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8111C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746935993;
	bh=STwMKjbUdbgk2NNYYUtLvkJgVuVcCh26FGRvqU6fL04=;
	h=To:Subject:From:Date:From;
	b=hJHN/BaWqaAHLOLd8qkxzgoPcfyicFEj2kEo0IRftZ10NWzApiYiU5W6/LWvGAbG1
	 x6fiA5KGhGDnYxjfWTAkVg3JmiiFCdmHkkepvbdIQMzQ5bLC0Zb9tw9EoIp9MbKdGm
	 +UZcQ+/VuRRzagkZmxQ0YRytpwzQLCVlvivJw7nIg+9elmX3AdYK/oKIrQlcMlwfvo
	 EFzBsSqRRUCTgx61EZjGLtQa+bKSddIt5i3VPINcdcRtnP8XvJtyUzQzLB2Za+Lfdo
	 2vqaYJ2KVZZmNhuvo8lXzaAxa/pe9mCDV5rqp0EIAharNcZChuv2we1QQ87FBeA84v
	 So2cYGcwkL/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A23C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693599357.18197.8790228708014186264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357d246ce357e93366562394c3cc2d71384c0efd203dc02fd1e30a20b71160d5
Date: Sun, 11 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746935993
