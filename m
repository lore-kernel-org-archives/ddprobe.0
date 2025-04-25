Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C087121D3D0
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745609993; cv=none; b=kGy8faPErnRrDb3HwlvDny0OUlVAB15KTshDNWaja1POM5Zzz+WPl7a9b44HBZQx1feh2MMeCXbg/gX+O8Ll0NTouqoO7SvBNHc5vZu7t4d5NCB1/Y2G++Pp3FezsJMDGu1iTJvsmlgGIqtcsqYR34WpLAWtCU3kyVtfI48+7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745609993; c=relaxed/simple;
	bh=T6pwtGeEmgzhvZ5DazjKFIH5N5dsJ3c0kPGPfWOlx60=;
	h=To:Subject:From:Message-Id:Date; b=JqeJzpKawo6+av5pB0IAogUU8OpL9PXBEPOZ+k6XeK9+vWkMTCiKLPwBEyKmlD8CbcmiGnApfoTi3bnvQZlCSHAxTolrqOhW3KDEUNVa6tRNf1OCSYru6PKFGDR7MfKS3OheoH2Mksad/lCkjfn/C1sD0Apy4Fkjxf8CC4mfjLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmEYElI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmEYElI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A00C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745609993;
	bh=T6pwtGeEmgzhvZ5DazjKFIH5N5dsJ3c0kPGPfWOlx60=;
	h=To:Subject:From:Date:From;
	b=GmEYElI/sAappc3lH8NhnKjb4owsb1Go0dpvatMy3bN61/5KCfQhlUa2xXoRdPOSN
	 AsNUnZV93zt8hzQ1pVR2zJzPtiTJcvvgfo1wWgDJ+YmLVbZlMKGoML2KMKPVcABivY
	 wRUGc+h4waoAPlIRyIT5V/FCqXLexm0Vh/xLDp1KTbbB5Rq/hjRQhBNQMmvYPKZSIg
	 d9oAKxIoJapl1ZFfEPnWD4Bl7/oIEjl3Y+XyRSNJOPD9HDA/ZlmJul6irRXTcYy1R/
	 /Fy9Jn6aOhNJsph3E8gYim0lRr7agmYlmDaSrcYvvtzGPWtO9cDiQguNrIYgcTSjok
	 +g9O9uWhrGmkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0FBC369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560999357.2392.2412422455442249921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef1eb459a168555f9ee448e8402ac5a5ffe28dc8b757a74aa32038d734f8aa4
Date: Fri, 25 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745609993
