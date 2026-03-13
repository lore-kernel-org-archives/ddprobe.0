Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EE637701C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773444294; cv=none; b=EGP4UTzMb224LGBIXRE8JBbsgOqWZpJorw+6kPfHB/Y+FqDfseYIJSt9a7WKnMefZXXx0Aw5OX6V1q24/mrPnCsztAj3HxQkUCh/cSjt7Gbpd3eHcgu2JjFqGuuLWSBpHeOJ5l3bRCRpQUTAN1MdEv9UcGVIqIkuDwbrJht107A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773444294; c=relaxed/simple;
	bh=jM8fmLX8lUCAj/MYgPOCFclDv/AO3ZhK3avTPK8QHM0=;
	h=To:Subject:From:Message-Id:Date; b=X9pls+5ZgrQlCLHwuOsf+z63rwdvKAZ3GYgnMx6czlCMxjdtuXG+LrfS5EVOReo2j6/H49j6+KZKRZSOqVMSjo9UfqF/Tm7MfBYZyBxkiAljxUYj/SON0+RMm92U+/+MrR0Tqz0gfHkLWiiO2M1jZAHyFvf49WoPFReVsWrzAGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq5auvEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq5auvEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF8C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773444293;
	bh=jM8fmLX8lUCAj/MYgPOCFclDv/AO3ZhK3avTPK8QHM0=;
	h=To:Subject:From:Date:From;
	b=Dq5auvEzFGshxXNh9x2ISN+58SjISBlsQGXVATztbG6Ze+iGxesrDzfIZ6xavBvX3
	 0nlybLnlmx5ZAQOOK+XW2DVXq3UMhUdyeI/EwmfAPW4D4ReCpy1JEuT2feo1+xfDxY
	 1wBRGNfJtE8pxRIhclptjcTWxr62Jmel1qYhrsWG5WD6eHcCVkhdVRZLj42xN9Fwk9
	 EkiwsedBnx8h7Jgxl68bK+obfFn7HXefhL9bG5oSE+OtJ8N/aS4vQUXpnQx8ExkCYQ
	 9P6i16NfMIdPwP4s0iGPvjHu/lGXneSb8xbzP3rPXgxut0ZSsCF0a0+69wq36LIXQX
	 PEus0vNpzN50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965CC107BCEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344429360.10708.8296760352679120517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db8526a6c78192d478169da39b998b1a1fe6aeb087539e5344ab9bc82740b43
Date: Fri, 13 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773444293
