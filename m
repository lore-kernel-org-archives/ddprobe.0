Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D33DDDC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721724954; cv=none; b=mjLCLT241QWy5D6CZrvMf0l7pSjK4vXN++RPI+byG4TW76JRlmTG/YZwQWwT1mfZRVEoub3wKSqnnNbLEhmYNdmZO7EHJp1LdDjUlGqUE2tGQ3mTidewppPgvTUEYQeBQHJkoLcIUtiXRF14FTS7Bx+i+XnmO5hiqRn8wwatIFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721724954; c=relaxed/simple;
	bh=xYJqKlb+/tPyFWwBE3kEC5km9QAVh1YwiYRy0Nqa/Dc=;
	h=To:Subject:From:Message-Id:Date; b=MlJjLO2AwgDGKAvQnXzb5+Httd6ZCE5dG5Cqxf64L2usqGQFQHz+v1k/x0HqPSoSGvUvb66iZWe7+9ADEFxMc8HqLryt7e/zRTRNEAMmMXE21Be6CZS4gkrPiE1YLkaD5aS7p40tYATvAsWQAxACUqZ3milC0G6KIEsuBP57KBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAG8fTjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAG8fTjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3087C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721724953;
	bh=xYJqKlb+/tPyFWwBE3kEC5km9QAVh1YwiYRy0Nqa/Dc=;
	h=To:Subject:From:Date:From;
	b=JAG8fTjy6aHO+ynsH1JZ9ieVQoBfGaXQhimjEucBfPkRsl9uYvlxmQ5Cjc1SF/hdT
	 kpBZovhYUZFQ4UarQBCtkEWDPWY5TIhJQ/NwsIKjDkAvQ+J5sVNgeM9oPdSlYVEprN
	 IHwDGmQMurlCSJwHa/h0gm7OgU/9+8wJnj67LS2uMQEXIjLxSjelfWstBQn8L724vy
	 QYQPWQojkgK22U5X7zQmxW4UKqanKZuTbjD3AmLLbVSdViqnzb+n3hgMyb0HdkWyIQ
	 wKz8FBsVMGaqH+2ZSNamCkkSZzzpKlXekHm90HXULuwfR7xdQqQz6U1ajeS6lURx0N
	 gAdOLCk/tg/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07FAC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172495364.16072.1253861267193034504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116518362df6c8aa356a5db38eca414d78cef88427328ee8cb1617b4355c9d59
Date: Tue, 23 Jul 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721724953
