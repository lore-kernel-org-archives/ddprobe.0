Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D5038C2B4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776380254; cv=none; b=JAq8v4MBPqRgXIq+wvxWfPEKaRtr3edcloUQyqNmZyWdAXvl9A5fRF6yT2IyYxaTXDS6OUl2BitSdnAmPORAd7cZefC6gh7dNteDSwTQGmD9t2l5hYWDMNcN9JD+0rKVASLbgI9ZtuJiy8pX9caV+4FJSEReH0/BOvEr10rs+78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776380254; c=relaxed/simple;
	bh=EjHEUS3vkI/YNPSCjevHH4LJa1CrsnINtmdyD37BMzQ=;
	h=To:Subject:From:Message-Id:Date; b=K5kOoBmzrYaL+dMugaWkG2tUztvo6p9TgKLmWKNubMEAjBMfVdW5rFmiN8x7pj8l9XBCXmdR28c8jgqYnaF6LHfUryPrq2sN8peqiLHL7oLOlfa0mxUfp1ot3pNKKWh8pJi8d/3Y76TW1ICpD+Ut1ch7Ljg+xxQysPhrUKlB5Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLMm4Q4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLMm4Q4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F93C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776380253;
	bh=EjHEUS3vkI/YNPSCjevHH4LJa1CrsnINtmdyD37BMzQ=;
	h=To:Subject:From:Date:From;
	b=RLMm4Q4eKMjJOktNLy5AlZ7T2Mm57ccUQrTDjRRoTdjyXadqYGNdhub4UaVLXmT96
	 s/cXQ3KPyYm6WtBb8u/modN9nF5RLgKX3Ne9N5uDOK42yQ7Vw6pXfFFh2M50fO40op
	 wFPIRki5e5MMiozAHgXJfQI4qX95VLmyZxKvr3t+EgLxzI0O/zEyumjgdJENfo/1vx
	 3TzSUSBCzR2ptjCUjvq8/HnkQrkqcAsZ0CvVQAnc3cCPfQEGrHSJtwcFqRWYMD1Q1F
	 5aThWNS5kvxgLaxVRptZ+HHIaApPFcfxU3kWbTI+4HYbXUtlSmBRz5tM/0mzRD8gDi
	 Gf59wf5S/sEFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF38F8E48C
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638025368.17086.1789644748979121791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca10f144ff068306dcd12401810ae844257f4c700b61b388ffd635069dc7a3e
Date: Thu, 16 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776380253
