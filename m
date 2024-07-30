Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1331118CC06
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722365754; cv=none; b=e/+Pe8Jz/MtuebebmC44F0C1oE7EhHBRdrD7tXpNNASEajYlo8X1AbZMdNsTaiFeutgT93ZnQdp1WbrriqxBtfBkE8eZZvI/9NanJpVFJchawBKo0oZrynLOMJZYfdnozPB6r/7hRhruVx4AjGdOPLMa9AZ6SaiEaUyZ5ZkqWP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722365754; c=relaxed/simple;
	bh=lKIE+aK582MbiogmuCmD5TgN0xU2BPSIhR+3wvWxZTo=;
	h=To:Subject:From:Message-Id:Date; b=J78BPOUOJqxh3/jLFQwuOk2aA3ZJ9tVOHAOuAm+k+KJ8APzZYp23uvc/7P2VuXKavxqufs13Eu47OHYwnyleeFMj/lgdFfgI1S+iwOJzfQoMd9q3+7ZWhjaoYJgV3JUbpnPsWLKNt9F0C8n4O2Xek1Nnp9Nv9riIyDXXssP/WhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFaDBAla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFaDBAla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D9C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722365753;
	bh=lKIE+aK582MbiogmuCmD5TgN0xU2BPSIhR+3wvWxZTo=;
	h=To:Subject:From:Date:From;
	b=bFaDBAlaff7YwH7TDGxScdUNX3aMVvsUYe2eRPrBkyPwEY1Zi7tM89QVU9eg63O8Y
	 ABbJKXYhK+YuNbkABAZSbfO4fi8b5Cwf8nj0miQh9Y2Y56GVIxhLqlbtRLeKiMNlfm
	 wTv1LPRkylxG9TBX8UAVIwZ1aKFczOuKOY864ClNEqOp8TCqlZKlwJ1axtqeps4g4c
	 0NwtiyDIXaaFcwq6TFGoZnzB1BI/qu0yG4L4H0Lfe1tct9dUFPF0MW/FNpLlCJkeUU
	 xrCVxXB8eoe0Ql8RMioiz6/fFPPJD1nqA7Jy4UCM94HcOBIVrPBoWakYU6nX2XnRzj
	 Wwr3X5kKUnjag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93933C49EA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236575359.4499.13255891375727823553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f451f98d0292043b9a9614b1f64979e141c10384965f9246d3e9e96959b7c53
Date: Tue, 30 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722365753
