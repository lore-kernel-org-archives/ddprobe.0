Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8CB388382
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784709514; cv=none; b=GXMXZuvZDp3nI2T/tw0SaceC+v+snJlZ9z/B1+p6T/9aToqWpuG4P5zIAFmwoOTcfrCMlW6uj/c/bM+f+62N6SaQu0SeIli+q/vsTlBfHJcFvcEZuEHhHoN0dSENgNwKpqMwtL+lZVpSx1tT95V2WfvTEyXegTU80aY1oLic8rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784709514; c=relaxed/simple;
	bh=WffP6cg6Hua77He2Ioj671xdxHWbUeny2AjIVgyEPP8=;
	h=To:Subject:From:Message-Id:Date; b=fP7WGtk3YgvKYR8qtI+aCA8Pw7zBz2RvokxtbZpUYej154iQ3qNAa0k6SR/JlAU/hKXUP631vbNLZp1d/F/uQlax2lNp6PdYa/99abDqB2aHxDagxVwtwdriw/lUX6RNd6/CoaGhFVWF4J5GtRa3fUBx45wmH0HdCqgOBrJfYEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi/nHfeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi/nHfeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DE81C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784709514;
	bh=WffP6cg6Hua77He2Ioj671xdxHWbUeny2AjIVgyEPP8=;
	h=To:Subject:From:Date:From;
	b=Gi/nHfePmvPTxcLiGdOL6hc+tbR5JnDEBBu8QE3zPAU9B/dSP2dA9V4smcJ+l2nCZ
	 ZPpcx0ZgOrF0GDHcMmrKV2j7CSvgeGMjjijlXn7z7zB+nucE/Ds1XEZKk9vGLIELlW
	 k8+j6KkE7EuxGc0qIEd0lobxZxRSKSdT7dCTHIcAEHLBUmOVOPGWJpfg2FtTXeCLBR
	 9b6JT0OYj1pcloG09d9ZDd1ynRJAX5AQ4mHjxqsxNRLt4jqhyHZlMU9HhTrB58ug/c
	 rucxie+d0MsbdEkxuoEI2wfV0uD2OE3OlciVQ9czTL0iHY5UpPbwGbcyJ47FsoSVBZ
	 6jU4BVdkQ4L6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C431DC44533
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470951377.2506.5287350323009869375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbb3f790adb7184f5960fbcf03827de67fa05428db83273da70d2950b342f11
Date: Wed, 22 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784709513
