Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871464963B1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786730434; cv=none; b=FMobATpA/YPcScsHRtyN64iBmSCE6j7YG8TYO4Jeb/pq8h9+A020/xRY33chDIrnwGgyVwFIFVjjibM2myJR+jnItzKWu3tazb0mfqMT8FzjQYunABde1A6GOHDfA1nboOR7a/SQKABQwnyoJply27vTwyi9XpxluBTOL2qSQjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786730434; c=relaxed/simple;
	bh=Q+CviXoGkKM5zFqZj9aehVn7Ax/XsVEbp8dVb86/a2s=;
	h=To:Subject:From:Message-Id:Date; b=eXo5d6+ZycjUlPp46CO5zqyhDez+p8YiqvPqSAIFULH6VooYAhJX+59L9/n5hRLkSC8yY1Zz7wuolD8fSz4siP0uZBhQaw5zU6dq32Nxd+QRG8o0aVeBKfcv58wH2D9S9rLJtzZqgV0Az4st4ashX66rU5B/8LL+11QqIxUWr2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwoprEKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwoprEKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC119C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786730433;
	bh=Q+CviXoGkKM5zFqZj9aehVn7Ax/XsVEbp8dVb86/a2s=;
	h=To:Subject:From:Date:From;
	b=pwoprEKZb9WRO6A7Ayfn1ZCZeUGOwKwzKOhXXRzvR/ZlZnhHMboW56k+vXh5DfK5h
	 8exEkyj3y9vudj93oXL4oBOHfsae4jflGu4X2+m1IhYaHDPVA9344MMyGqgBrGPj43
	 WMqlBJFPR/VVWr8T4sqWmtvWL/2wMWpirZhCmQn0fdpUdkxZsdln6Izyay8ttyv7cW
	 d/R5Ttf1fwia8MIcAMgMMMX9OJMqKjLV+WaKuVQGPQ+w+m0p8/294fawmwpOy0Pi/P
	 yzCWdn1kb23ow2dIrqeebqTXMyapuGrGB88lf5RNKHUV3rBo3PB5P0lJ9z6sj+0KZM
	 MGhF0qJm0Whrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3EEC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673043368.16918.15434896153515978120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60cda26174dd51de1852b6faf17278fac9a9f9a5a5b58913c8c18825f4eaef2
Date: Fri, 14 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786730433
