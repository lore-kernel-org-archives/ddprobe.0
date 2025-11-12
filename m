Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345DA3002A6
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762941594; cv=none; b=Pu9EoqDMzP/r7j6PyvAQKKT1I29AyduvSEKJC7i5sBcF1lUUEZnqpWrJb9k7txRwA7MxjwqgYqvQOYrD9Vjc33VSpzSn7MtAhJsOp6DRpsQktzAp6AIb1KfnrJlXMofc798N4pP+KCh4OMD13cWRYj4LSQwZ+H4UK/kVCe/6GvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762941594; c=relaxed/simple;
	bh=ae73wa9pelYp1rzMNLyBl4VmmQOQXh2V5LyFnDpAZFU=;
	h=To:Subject:From:Message-Id:Date; b=iC1uiS+bLp+Nw3a5ZBBSvRxRN1a3eenUFdMQZwg4111ItVZ+v6l4FtHB7XYZtCPTJFbG6lTgb+AHL0jCMw+p/Y+cAeNMi673a0BebGoT48hr/U5mdmbt4MZdzTSGmYMnJu3OVvhKZesR52Sanba8OK5UwjZ4yWKkcOHJRHPezNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIBdq60Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIBdq60Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B578BC19423
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762941593;
	bh=ae73wa9pelYp1rzMNLyBl4VmmQOQXh2V5LyFnDpAZFU=;
	h=To:Subject:From:Date:From;
	b=LIBdq60Yvwn9RMEGEMkiJlqc2BXu/YBHlvNTWEvOPKixcn3yPM810p37S77ZAsIqh
	 O4D+D9khusOkQnWW9BFaI9nWaRD4uuOzi9xYs3/Kyf3pbk+WeiD1Vw+3r8GgB++Sb2
	 0mAUFFVNvbrui8VtWWJHfw6HxLDTPr3rpu+K2MlsQ5ly4L+ZY+Av4uJzWFtLbJne+O
	 Ajnn8g2lAvlt7RNA9uRih3IjNLP7woccIlBE3hbwL9yD7b/W+l2IocaAF/RHXOzR0C
	 /fCE68zg1ZpFAB9Y74CmpkcmhPTqetS3auy6MCaOvK6hbfIvi2CqhhQfuOlTpZKGI1
	 pdlRvPx1SZJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D3CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294159357.26094.8219569201761964228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d265231a0fcb1a92430c413501b30e81cd2bae80e7e00474453b7d13b2d3abf
Date: Wed, 12 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762941593
