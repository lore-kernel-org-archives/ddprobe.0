Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6EC190055
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736589354; cv=none; b=YVNYvdSzYoskVYQLO0T4a6UQ/P1o3Rm9GZOImFibQTashCKF2xnKUdLSwSg6h9h3TuHM/P+UfSrSinrOcW3dVmx8XQ9IlVfeKmBw7BPObbF0I0rUCd42WICofuUPGR8TPjrVqZ99h7zWfEisbPGmzwwx1nT+YO6xAjDwk5MQFxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736589354; c=relaxed/simple;
	bh=zODnsTwwX/n3CQgj6Mhnx2Q/mQXtZFSNJPnvfc1SwmM=;
	h=To:Subject:From:Message-Id:Date; b=aveekzDim6/L7bB4lfw5tegUSTjaAd0hI8rImvcAcllkzNpLZ3+WR8ct1/76sYFAznK4VBQC+anP9mbxfDIO5y1KRbpCuLHWP9ltePLg2cRpiz9bgOAdQN9zws7p7Sxu9GvfC2eQCC1xsBXQ/BWhFniVsXHy1noOuz4CX12tScQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYqPwhdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYqPwhdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66FDC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736589353;
	bh=zODnsTwwX/n3CQgj6Mhnx2Q/mQXtZFSNJPnvfc1SwmM=;
	h=To:Subject:From:Date:From;
	b=SYqPwhdP7oX5A0xdKnN9FqW1lAGs6dnMBhRas67yWa8xQ60HX24JreGOw1kn13VJO
	 tpFbzbkAqLY/YM+1WqCLy7rayg4AZX9NplnSje17HK07X/cdEt0Sp/KN8o8N3Y3MdU
	 froNYSP7m0sbmELWwGt+zmbYpy/BJl5/XTHjn0voShaw/6zYPmWYGjKjLc+7gQdyH5
	 ukCBqgqEEcKSG1wzCdoHBIS02MpKFSb6LI8bnBoIh+VFYKkoCgpt3WUPLl6Xd7GWGi
	 v0Js4dbW78fqthsOtmzDoy33JniKLGkpUCPSWFh79xEMIi4BWvseUGD8EM+RBTOwzZ
	 y5FM+W/7GM8jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59D1E7719C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658935360.23482.6302274842287375897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f775d586d9ed6e2baaa611dabcbb768344159bd268d2770aaca601af33bc077
Date: Sat, 11 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736589353
