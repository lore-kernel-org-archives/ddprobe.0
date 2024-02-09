Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C93A182D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707521297; cv=none; b=ivyVuLIf3jQZ9vrMYaB9DEZ0uE/jtz2egAB8R7/eZxK/Pq22fwZB2hRFgX5YYEXwXR+yPLSeVuV0KQs+0pr2xnpXNTQ8Lwb7KGpGbw/V6nvDh75JFUjOU3PFvQ1LPFTZWaTp7myoEvZX9VcDiQAtoN0pZd7K8G4wWnCC6FeMfnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707521297; c=relaxed/simple;
	bh=zAqEeN4cQV2G4EVtLbRHwZrJIvbFh2nDlMw3wS2/Ppg=;
	h=To:Subject:From:Message-Id:Date; b=fdZRVGmye9BFXAmU9DE/5i06ui9f5BOLJPTTOtfflgC4zE/4BuyyX9I+1yqlLJJXCrtm6/MGmRSMH/Uuqsvpm4mGgNMv9cw7dp/i/IsDcDGQNDUV+jWNjp9T5xs9V5ktsMuX52iK+hP6riV2XGCna1rg0gJGXY+VMQswBeWIzf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvv1+tEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvv1+tEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80198C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707521296;
	bh=zAqEeN4cQV2G4EVtLbRHwZrJIvbFh2nDlMw3wS2/Ppg=;
	h=To:Subject:From:Date:From;
	b=Yvv1+tEoG19wRLkihD++hyE3MAiurFKMzZjSd1xZohnQheS3tQlwV/gwQh18UXWIs
	 BS4MS3HHyMcFJ1ZdYK7ANJoXMWiXYzrPySmLgxabl/upxHSINShmmhlIKdLql+mkSm
	 Wo3iPFfnUIdhzUQ6g3v7zKkx8tcBXUT9sF80XS5H/0sdbjbt0vJAGeH5x++hI0+88z
	 QEHWAFUMUtv4nGk/uXcIKQh4fn83LXJqzfJ7nBKewrqIOrTxRsaIn9drDDhRobOG4Z
	 wQtrH/AtAxKn+FSSNxxWJA/7hgaAFeGG52Nt4W78EWE/2VDsU/SWUeUYbEig2di33x
	 yr+gNTcLVIT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65898C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170752129638.6648.12387927992152195112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4da14ee236715b342537747223a8ef468f1ad394e2af8542e5834b11fedef0f
Date: Fri, 09 Feb 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707521296
