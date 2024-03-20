Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FE411712
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710906496; cv=none; b=T7GI/LVMN1M1AvSMPDPBwcRfzolkWdp5U1yaeGJl2lvVCMfG7w6KZ8UAU3o8v6quZsUQK2tT58giQroimm33VFwqhPOGQp8TLWGZwweRkco3Q3KztnIB1XY8knLhTN0n7BIFaUHppKsIsMnZq9S86jRUxxgT+UmzTtkjcj6EgR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710906496; c=relaxed/simple;
	bh=zX2+bTp2Y8HVJr2JLnslH2Ju/GxVoLRTPKxKbob1B9c=;
	h=To:Subject:From:Message-Id:Date; b=DJ5P0G6TtRCD/5uxQ01fFEK0mAB9XJXADK63CtxHSX04cskYZqQ/XOfNBmLrLCdpU4ISk+uNBryclqlBSpl8090ZYb9PyUmQ8rObpwxVOjO+RRTGqgU2ofhYhFYvjiY1Q7wgZFOF9itEK3pNlCJlhH8aX3UYKl1slNK1o1RRPNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPRQpEeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPRQpEeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EF3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710906496;
	bh=zX2+bTp2Y8HVJr2JLnslH2Ju/GxVoLRTPKxKbob1B9c=;
	h=To:Subject:From:Date:From;
	b=FPRQpEeUHj8h5zDfCnVJ9VFB+Z4nAgBC02cyq3S7GyK71KT74K6M0++cpmfIaNEAH
	 +jNbKP1MVfJgMjb7wCc6fu0JsN+AePEhP9SEaCrnbhyOflFJIUtVoo+bKgUWTmc+ql
	 vDyj2nVj5+B/yV42X8a8LfCPeXDtqh+qx7gGJs8rDyvoB4vIcTMWMfbscftNhaCIS/
	 UNHoU50ec2XOIRdY6jDZ03tFLoTWMaNDfXCRCqQMcJawlz2FnHgYMot/QaIRqzQoWm
	 sRSjrmGhjpJcUt/MdQOBVSyRxVgLwzOtSUDwPWnJFRZZUS2FIj0Emx9Sa0LzwyTJSN
	 dSltnChZrX2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68642C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171090649641.15652.7587790764089054654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff528737ba6eb3151c074f8fb0b74b4fd4efda7fefd679092929cced181ee95
Date: Wed, 20 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710906496
