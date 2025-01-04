Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B8F1CF7AF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736022354; cv=none; b=cMen9+WqmgcC0yMRjzFtLp5amczHBEXSBV1mhVeVlKu8CbRzPSIsCQJOh8MbSkX8Zwv3MqGA4ScGnFXkUILmJzvkrJzB0T39FAoawbo9yWSTZSaI9YjQOaqwXgHEBmHhhrwZHuB0nJ/Z0MCYpbv7Q5wXn0B6bL6eTz+kuq/pN2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736022354; c=relaxed/simple;
	bh=5ei+qGLZdE/Nd2zE7xIiC7DzD14+XRdGLIQanMX5H10=;
	h=To:Subject:From:Message-Id:Date; b=NfV48Wcv1wUE1Q3cXAucymE1Lv8fVz31Zbtdi2cjpDnr93C4jpjSnD4IpubENfURUx+a/EK0jdmTxWO1/Y43FkMaPKbNSV3eTF/Eqa34HXp5ph2yfEn240CSc6q7iR1rC3HKuFxKeixMRQ/t+VO9nejUCCHfwCYdPvNaF3iJK3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/RyCx5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/RyCx5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5477C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736022353;
	bh=5ei+qGLZdE/Nd2zE7xIiC7DzD14+XRdGLIQanMX5H10=;
	h=To:Subject:From:Date:From;
	b=e/RyCx5Csx1YGvYl9BOSqU3b8hNg1YVxUuqSr6RULdFnfyTKFZV4FurvAu+BFkzA2
	 WBbQR+fIvZPbkY8HufBTu0/VcXSglDkLx7FYFcR9A2Nv8gmEZv8uvJW0R2+b8A71DZ
	 Qbnej2LydGM/hJ7ae8qpKroHakSwxBi8A0yk9F1HZF83fa5eO9uem69bmTSClunVvu
	 Ai3AWRoVuQZbHuqy9FEeObuJdiwBjawZRS8BTM6uVKUH3c1lhU/LXCNZL6kRnn5tgK
	 ObPG8AiYpNKf+e7EqGmp9hs8Csd7JpVNteziCORK3q9s+Z+mpIrt2lTWAGNkeUP/fK
	 ga038WDvedMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBFFE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602235362.13125.14715941989753152341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a926a873f3fcf6ca7fa30c2d081fa2137958315999aac5c79ade2ac00e385247
Date: Sat, 04 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736022353
