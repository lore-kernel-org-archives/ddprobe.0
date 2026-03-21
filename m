Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121622C028F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774119894; cv=none; b=nAcegYkAYm4lbtE0kDnn+xu9VxaUGSqxg5OJxtcXe05msBA4+oUxCQ1JeIbYhSYkUoZ1uCYfsSsSn6tvuiN65MA6IMBFeF4v6oiTo+EImaUMJEv/428jQ5G2CNPsS0Co1V6v/+jdmhmpaHirw5D7H+RM8T7cfJOekjRKymCs1Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774119894; c=relaxed/simple;
	bh=ey5Dm6hfeSoi/UsfrpUJxoD+4frmP8yQx7ofS5drwNE=;
	h=To:Subject:From:Message-Id:Date; b=KQRVZ0Y+6Sj8E99VfxVgWCTxb6X0X821oYYqPP+i68PsB5IENmGi2V2kQdu37WhvPjpQn9ADWdg88Fk3oM9AhQeFrlIGw1Z2sjBdwIeBxClOzwEpxA1j24RnIbhkyB7iTRzWaGpSjNkYbku6rc9WvuEAxInwf6GnCN/9Z/P7HGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7+2sLXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7+2sLXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ABAC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774119893;
	bh=ey5Dm6hfeSoi/UsfrpUJxoD+4frmP8yQx7ofS5drwNE=;
	h=To:Subject:From:Date:From;
	b=k7+2sLXjrG7jmFuHzdoBteG7PW7EIpqVvsPRJiWkGlqRmDmp2AJXJo9ui3D9Pc9zV
	 f5mAXWtCf9SfYWd4qZGg6Gx5KoVIo259DBtoD7yKfGQKVkY1Awq/kgPjAo+jMR4s6V
	 iPxoJHTPGrCCLLqWkCy2wyrnHUyhOlx3z5pqCW/S9RtZPEwNLGfx0zs2bP35qFUR1r
	 YYJwVoHk+LOCqHOwj1Z5nQ1SgnRcSLJbg5tyGdq5GBCXYr2By10Hb9FANExV6YZLbm
	 7oKzlaPqVR91z5xvSAbPf1zjnKHGyAYoB7jIbyZ55YeMWoULiMLsMIc4ScNI0+fONS
	 7r2sRqU6VL7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E551094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411989357.8060.18381594896657014513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b561ec8fc67779a03b5dca923435fbb0ce662f3804ce77ea721d62b24115431d
Date: Sat, 21 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774119893
