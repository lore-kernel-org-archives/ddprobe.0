Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFDE3559F8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768488834; cv=none; b=n2yfhY9C1KkULhUg4G+9x54k+9+WVqlnZj+mMJv7fyS6xDuXZOdl/MsxE2L4/K3/j06xZnfNtD5Svl+p86QCCOzn1JhFD3d4bo1+BRiudXjYV3IbRfr1FoMkOkOAtP01I1BLJlXMAryYZmffvaDOtn2x1JWCuQdUmBDEL2FpYjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768488834; c=relaxed/simple;
	bh=dMII096VxNTQIFVds+BpqT8Ww//9CmUpt75k1ZOQwBA=;
	h=To:Subject:From:Message-Id:Date; b=mVIfOsS+UiJViFzWhAG4d3R55AErqQcapMgb66tVU8gzyPffyroUlZEdq+eQuvKnaibe5AsdOy6rhL7d3o12AwncmOTON5m7IQLpPgeD5LUJl2AOtlDgbmG931UGQ8Pv2t5ZzXNB83W86Fkz6cxOteBx30OGmoHG8q1vwONDnY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqTqtGrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqTqtGrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F1DC2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768488833;
	bh=dMII096VxNTQIFVds+BpqT8Ww//9CmUpt75k1ZOQwBA=;
	h=To:Subject:From:Date:From;
	b=rqTqtGrjGMHiobiir/0hPbFrB0MW8XqUafSNjK8UA+eJ70ixAbyvMIZzuYrVRGg4/
	 8J6T3OfeZwq3f5PrphIHLcsrXsev7JCNUgbD5oAz2QXXzqYguIGXQpQQAzI8IaBo0m
	 7Ec8Td7B63DFgvE+DzBvBGpac9TFAADZNbEvCkJalR+mE1W11TD4NYU1JhVh1zyT5Y
	 uP9LCDMRrmp6ptXwYCIdzhGjvgbw7JBYz7wuVnTmnJyv2BIEmY2UguUgCSzOARtolb
	 P1vlNmh80wI/EcgtFz+SGu0LWImkr4a1AwOckCLDgb4DqmYOINhXJAjUt2ovi6MQ2C
	 PoFS3acGCCmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A43D44C56
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848883360.22570.13893542496655545163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9a24cbfc93308df35ea42af0cb226ff7e0604418f50c61489992053ac969cf3
Date: Thu, 15 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768488833
