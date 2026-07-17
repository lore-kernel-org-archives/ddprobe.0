Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CEA3BE646
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784275714; cv=none; b=k7GPdiH8gQ7MDYAhQ0OQfKekuEQlp7DO6VS78qdqEgIjbgxTPFvQBBVcFLvJH+Z+PjU+gyi5OeAUbCSbuy1yPyzjj2p+JR1ERW/sjrjARjCWs552dlbPhqLjXp1BvOoSx+7X2E4ahLXhlSAY0m6VTUKqbSCk38DWnCRzTjL1d/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784275714; c=relaxed/simple;
	bh=3haiPOapjwjixidEO2B/hVCf6MqLMvBpB/uuQYf07Ho=;
	h=To:Subject:From:Message-Id:Date; b=BKan03/t0fj4l9qXmSLBlyNBj5SqjFC1bbdRFH3MsPrjPtCj59jv5ACpMO/1yYPOqhf1jS084luSVHXnIvAB4NY13TlUGm8QguNcgZK8dyd7IhANFCM+VpFotOG2BZFwE1sxAfYBaI9sRoFY/qwH5NgtiJvN8ZQa4RmUgCfLvVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVcgblL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVcgblL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA328C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784275713;
	bh=3haiPOapjwjixidEO2B/hVCf6MqLMvBpB/uuQYf07Ho=;
	h=To:Subject:From:Date:From;
	b=QVcgblL+zPjL5hx/XZdIvOQbUhr+l9XNbLEtJhQWs73KZzm2X1N4vjTRxEPvABDlT
	 OXVv8pwSHKbPxX74dt7H+4WxjWA6sElCJSS4WmtfZqp97PTE8rIA0S1KD7zUMXBREy
	 OnFBHIlG082RkNCRzSHn/z9yjxICEtU5OiH7ROYoMePyFJ5d2uXVRewDjX8GP7Sr9R
	 Z6BcGFdqBGF47Mt82nTHEl2bke2I2cylms7yOdI/yUCk7/rshWnNSZ8ZDxibeyT1lo
	 yir24uQMoN8cMnUeCNfob+76g5xTVNaGS/PMkQWoiqlQDpO0nxLCKkckTrz+T5DsH7
	 bQDopfBE0jrhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DECC44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427571368.17846.1608792178961186515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfc2160ca2fb55602464748b6479b8790adeb405cf0680becc3569b6fb9c58d
Date: Fri, 17 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784275713
